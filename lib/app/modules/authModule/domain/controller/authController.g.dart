// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthController on AuthControllerBase, Store {
  late final _$_buttonStateAtom =
      Atom(name: 'AuthControllerBase._buttonState', context: context);

  @override
  Observable<LoginButtonState> get _buttonState {
    _$_buttonStateAtom.reportRead();
    return super._buttonState;
  }

  @override
  set _buttonState(Observable<LoginButtonState> value) {
    _$_buttonStateAtom.reportWrite(value, super._buttonState, () {
      super._buttonState = value;
    });
  }

  late final _$AuthControllerBaseActionController =
      ActionController(name: 'AuthControllerBase', context: context);

  @override
  void setButtonLoading() {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.setButtonLoading');
    try {
      return super.setButtonLoading();
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setButtonIdle() {
    final _$actionInfo = _$AuthControllerBaseActionController.startAction(
        name: 'AuthControllerBase.setButtonIdle');
    try {
      return super.setButtonIdle();
    } finally {
      _$AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
