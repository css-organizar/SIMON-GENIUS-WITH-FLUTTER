// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameController on _GameControllerBase, Store {
  Computed<bool> _$isStartedComputed;

  @override
  bool get isStarted =>
      (_$isStartedComputed ??= Computed<bool>(() => super.isStarted)).value;
  Computed<bool> _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading)).value;
  Computed<bool> _$sucessoComputed;

  @override
  bool get sucesso =>
      (_$sucessoComputed ??= Computed<bool>(() => super.sucesso)).value;
  Computed<bool> _$asErrorComputed;

  @override
  bool get asError =>
      (_$asErrorComputed ??= Computed<bool>(() => super.asError)).value;
  Computed<ObservableList<int>> _$currentValuesComputed;

  @override
  ObservableList<int> get currentValues => (_$currentValuesComputed ??=
          Computed<ObservableList<int>>(() => super.currentValues))
      .value;

  final _$_isStartedAtom = Atom(name: '_GameControllerBase._isStarted');

  @override
  bool get _isStarted {
    _$_isStartedAtom.context.enforceReadPolicy(_$_isStartedAtom);
    _$_isStartedAtom.reportObserved();
    return super._isStarted;
  }

  @override
  set _isStarted(bool value) {
    _$_isStartedAtom.context.conditionallyRunInAction(() {
      super._isStarted = value;
      _$_isStartedAtom.reportChanged();
    }, _$_isStartedAtom, name: '${_$_isStartedAtom.name}_set');
  }

  final _$_isLoadingAtom = Atom(name: '_GameControllerBase._isLoading');

  @override
  bool get _isLoading {
    _$_isLoadingAtom.context.enforceReadPolicy(_$_isLoadingAtom);
    _$_isLoadingAtom.reportObserved();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.context.conditionallyRunInAction(() {
      super._isLoading = value;
      _$_isLoadingAtom.reportChanged();
    }, _$_isLoadingAtom, name: '${_$_isLoadingAtom.name}_set');
  }

  final _$_asSuccessAtom = Atom(name: '_GameControllerBase._asSuccess');

  @override
  bool get _asSuccess {
    _$_asSuccessAtom.context.enforceReadPolicy(_$_asSuccessAtom);
    _$_asSuccessAtom.reportObserved();
    return super._asSuccess;
  }

  @override
  set _asSuccess(bool value) {
    _$_asSuccessAtom.context.conditionallyRunInAction(() {
      super._asSuccess = value;
      _$_asSuccessAtom.reportChanged();
    }, _$_asSuccessAtom, name: '${_$_asSuccessAtom.name}_set');
  }

  final _$_asErrorAtom = Atom(name: '_GameControllerBase._asError');

  @override
  bool get _asError {
    _$_asErrorAtom.context.enforceReadPolicy(_$_asErrorAtom);
    _$_asErrorAtom.reportObserved();
    return super._asError;
  }

  @override
  set _asError(bool value) {
    _$_asErrorAtom.context.conditionallyRunInAction(() {
      super._asError = value;
      _$_asErrorAtom.reportChanged();
    }, _$_asErrorAtom, name: '${_$_asErrorAtom.name}_set');
  }

  final _$_positionAtom = Atom(name: '_GameControllerBase._position');

  @override
  int get _position {
    _$_positionAtom.context.enforceReadPolicy(_$_positionAtom);
    _$_positionAtom.reportObserved();
    return super._position;
  }

  @override
  set _position(int value) {
    _$_positionAtom.context.conditionallyRunInAction(() {
      super._position = value;
      _$_positionAtom.reportChanged();
    }, _$_positionAtom, name: '${_$_positionAtom.name}_set');
  }

  final _$geniusAtom = Atom(name: '_GameControllerBase.genius');

  @override
  GeniusController get genius {
    _$geniusAtom.context.enforceReadPolicy(_$geniusAtom);
    _$geniusAtom.reportObserved();
    return super.genius;
  }

  @override
  set genius(GeniusController value) {
    _$geniusAtom.context.conditionallyRunInAction(() {
      super.genius = value;
      _$geniusAtom.reportChanged();
    }, _$geniusAtom, name: '${_$geniusAtom.name}_set');
  }

  final _$_currentValuesAtom = Atom(name: '_GameControllerBase._currentValues');

  @override
  ObservableList<int> get _currentValues {
    _$_currentValuesAtom.context.enforceReadPolicy(_$_currentValuesAtom);
    _$_currentValuesAtom.reportObserved();
    return super._currentValues;
  }

  @override
  set _currentValues(ObservableList<int> value) {
    _$_currentValuesAtom.context.conditionallyRunInAction(() {
      super._currentValues = value;
      _$_currentValuesAtom.reportChanged();
    }, _$_currentValuesAtom, name: '${_$_currentValuesAtom.name}_set');
  }

  final _$gameContinueAsyncAction = AsyncAction('gameContinue');

  @override
  Future gameContinue() {
    return _$gameContinueAsyncAction.run(() => super.gameContinue());
  }

  final _$_GameControllerBaseActionController =
      ActionController(name: '_GameControllerBase');

  @override
  dynamic gameStart(int value) {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.gameStart(value);
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementaLista() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.incrementaLista();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic gameStop() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.gameStop();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic click(int value) {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.click(value);
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLoadingOn() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.setLoadingOn();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLoadingOff() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.setLoadingOff();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic gameAction() {
    final _$actionInfo = _$_GameControllerBaseActionController.startAction();
    try {
      return super.gameAction();
    } finally {
      _$_GameControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
