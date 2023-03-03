import 'dart:async';

enum InternetStatus { connected, disconnected }

class InternetCheckBloc {
  late bool isConnected;

  final _stateController = StreamController<bool>();
  StreamSink<bool> get internetSink => _stateController.sink;
  Stream<bool> get internetStream => _stateController.stream;

  // final  _connectivity = Connectivity();

  // final Conne

  // final _eventController = StreamController<InternetStatus>();
  // StreamSink<InternetStatus> get eventSink => _eventController.sink;
  // Stream<InternetStatus> get eventStream => _eventController.stream;

  InternetCheckBloc() {
    isConnected = false;
    // eventStream.listen((event) {
    //   isConnected = event == InternetStatus.connected;
    //   internetSink.add(isConnected);
    // });
  }
}
