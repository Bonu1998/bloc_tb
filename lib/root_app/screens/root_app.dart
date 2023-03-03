// import 'package:bloc_tb/application/internet_check.dart';
import 'package:bloc_tb/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_tb/bloc/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<StatefulWidget> createState() => _RootApp();
}

class _RootApp extends State<RootApp> {
  bool isInternetConnected = false;
  @override
  Widget build(Object context) {
    return BlocListener<InternetBloc, InternetState>(
      listener: (context, state) {
        setState(() {
          isInternetConnected = state is InternetConnected;
        });
      },
      child: Stack(children: [
        Center(
          child: Flex(
            direction: Axis.vertical,
            children: [
              const Text("Hello"),
              TextButton(
                  onPressed: () {
                  
                  },
                  child: Text("PressMe"))
            ],
          ),
        ),
        Visibility(
            visible: !isInternetConnected,
            child: Container(
              color: Colors.amber,
              child: const Center(child: Text("Not connected")),
            ))
      ]),
    );
  }
}
