import 'package:bloc_tb/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_tb/root_app/screens/root_app.dart';
import 'package:bloc_tb/presentation/screens/home.dart';
import 'package:bloc_tb/presentation/screens/signup.dart';
import 'package:bloc_tb/presentation/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MultiBlocProvider(
          providers: [
            BlocProvider<InternetBloc>(create: (context) => InternetBloc())
          ],
          child: SafeArea(child: Scaffold(body: RootApp())),
        ));
  }
}
