// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genius_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GeniusController on _GeniusControllerBase, Store {
  Computed<int> _$contadorComputed;

  @override
  int get contador =>
      (_$contadorComputed ??= Computed<int>(() => super.contador)).value;
  Computed<int> _$recordComputed;

  @override
  int get record =>
      (_$recordComputed ??= Computed<int>(() => super.record)).value;
  Computed<int> _$timerComputed;

  @override
  int get timer => (_$timerComputed ??= Computed<int>(() => super.timer)).value;

  final _$_contadorAtom = Atom(name: '_GeniusControllerBase._contador');

  @override
  int get _contador {
    _$_contadorAtom.context.enforceReadPolicy(_$_contadorAtom);
    _$_contadorAtom.reportObserved();
    return super._contador;
  }

  @override
  set _contador(int value) {
    _$_contadorAtom.context.conditionallyRunInAction(() {
      super._contador = value;
      _$_contadorAtom.reportChanged();
    }, _$_contadorAtom, name: '${_$_contadorAtom.name}_set');
  }

  final _$_recordAtom = Atom(name: '_GeniusControllerBase._record');

  @override
  int get _record {
    _$_recordAtom.context.enforceReadPolicy(_$_recordAtom);
    _$_recordAtom.reportObserved();
    return super._record;
  }

  @override
  set _record(int value) {
    _$_recordAtom.context.conditionallyRunInAction(() {
      super._record = value;
      _$_recordAtom.reportChanged();
    }, _$_recordAtom, name: '${_$_recordAtom.name}_set');
  }

  final _$_timerAtom = Atom(name: '_GeniusControllerBase._timer');

  @override
  int get _timer {
    _$_timerAtom.context.enforceReadPolicy(_$_timerAtom);
    _$_timerAtom.reportObserved();
    return super._timer;
  }

  @override
  set _timer(int value) {
    _$_timerAtom.context.conditionallyRunInAction(() {
      super._timer = value;
      _$_timerAtom.reportChanged();
    }, _$_timerAtom, name: '${_$_timerAtom.name}_set');
  }

  final _$getRecordAsyncAction = AsyncAction('getRecord');

  @override
  Future getRecord() {
    return _$getRecordAsyncAction.run(() => super.getRecord());
  }

  final _$_GeniusControllerBaseActionController =
      ActionController(name: '_GeniusControllerBase');

  @override
  dynamic setRecord() {
    final _$actionInfo = _$_GeniusControllerBaseActionController.startAction();
    try {
      return super.setRecord();
    } finally {
      _$_GeniusControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementaContador() {
    final _$actionInfo = _$_GeniusControllerBaseActionController.startAction();
    try {
      return super.incrementaContador();
    } finally {
      _$_GeniusControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reduzirTimer() {
    final _$actionInfo = _$_GeniusControllerBaseActionController.startAction();
    try {
      return super.reduzirTimer();
    } finally {
      _$_GeniusControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic start(int value) {
    final _$actionInfo = _$_GeniusControllerBaseActionController.startAction();
    try {
      return super.start(value);
    } finally {
      _$_GeniusControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reinicarTempo(int segundos) {
    final _$actionInfo = _$_GeniusControllerBaseActionController.startAction();
    try {
      return super.reinicarTempo(segundos);
    } finally {
      _$_GeniusControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reset() {
    final _$actionInfo = _$_GeniusControllerBaseActionController.startAction();
    try {
      return super.reset();
    } finally {
      _$_GeniusControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
