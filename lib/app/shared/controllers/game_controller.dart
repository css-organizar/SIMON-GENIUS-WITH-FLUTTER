import 'dart:math';

import 'package:mobx/mobx.dart';

import 'genius_controller.dart';

part 'game_controller.g.dart';

class GameController = _GameControllerBase with _$GameController;

abstract class _GameControllerBase with Store {
  @observable
  bool _isStarted = false;
  @observable
  bool _isLoading = false;
  @observable
  bool _asSuccess = false;
  @observable
  bool _asError = false;

  @observable
  int _position = 0;

  @observable
  GeniusController genius = GeniusController();
  @observable
  ObservableList<int> _currentValues = <int>[].asObservable();

  @computed
  bool get isStarted => this._isStarted;
  @computed
  bool get isLoading => this._isLoading;
  @computed
  bool get sucesso => this._asSuccess;
  @computed
  bool get asError => this._asError;
  @computed
  ObservableList<int> get currentValues => this._currentValues;

  Stream<int> _actionStream = Stream.periodic(
      const Duration(
        seconds: 1,
      ), (int count) {
    return count;
  }).asBroadcastStream();

  _GameControllerBase() {
    this._isStarted = false;
    this.gameAction();
  }

  @action
  gameStart(int value) {
    this._asError = false;
    this._asSuccess = false;
    this._isStarted = true;
    this._position = 0;
    genius.start(value);
    this.incrementaLista();
  }

  @action
  incrementaLista() {
    var _random = new Random();
    if (this._isStarted) {
      _currentValues.add(_random.nextInt(3) + 1);
      this.setLoadingOn();
    }
  }

  @action
  gameStop() {
    this._isStarted = false;
    this._position = 0;
    this._currentValues.clear();
    this._currentValues = <int>[].asObservable();
    genius.reset();
  }

  @action
  click(int value) {
    if (this._isStarted) {
      if (_currentValues[this._position] == value) {
        this._position++;
        genius.reinicarTempo(10);
        if (_currentValues.length == this._position) {
          this._position = 0;
          this._asSuccess = true;
          this.incrementaLista();
          genius.incrementaContador();
        }
      } else {
        if (this._isStarted) {
          this._asError = true;
          this.gameStop();
        }
      }
    }
  }

  @action
  setLoadingOn() {
    this._isLoading = true;
  }

  @action
  setLoadingOff() {
    this._isLoading = false;
  }

  @action
  gameContinue() async {
    this._asSuccess = false;
    this._isLoading = false;
    genius.reinicarTempo(10);
  }

  @action
  gameAction() {
    this._actionStream.listen((int newAmount) {
      if (isStarted && genius.timer > 1) {
        if (this._isLoading == false) genius.reduzirTimer();
      } else {
        if (this._isStarted) this.gameStop();
      }
      if (this.sucesso && this._isLoading == false) this.gameContinue();
    });
  }

  dispose() {}
}
