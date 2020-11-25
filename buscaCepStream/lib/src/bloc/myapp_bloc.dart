import 'dart:async';

class HomePageBloc {
  final StreamController _streamController = StreamController();

  Sink get input => _streamController.sink; // ENTRADA DE DADOS

  Stream get output => _streamController.stream; // SAIDA DE DADOS
}
