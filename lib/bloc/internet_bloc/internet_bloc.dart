import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

import 'internet_event.dart';
import 'internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  StreamSubscription? subscription;

  InternetBloc() : super(InternetInitial()) {
    on<InternetOnConnected>((event, emit) {
      emit(InternetConnected());
    });

    on<InternetOnDisconnected>((event, emit) {
      emit(InternetDisconnected());
    });

    subscription = Connectivity().onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(InternetOnConnected());
      } else {
        add(InternetOnDisconnected());
      }
    });
  }
}
