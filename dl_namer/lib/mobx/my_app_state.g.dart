// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_app_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyAppState on _MyAppState, Store {
  late final _$currentAtom =
      Atom(name: '_MyAppState.current', context: context);

  @override
  WordPair get current {
    _$currentAtom.reportRead();
    return super.current;
  }

  @override
  set current(WordPair value) {
    _$currentAtom.reportWrite(value, super.current, () {
      super.current = value;
    });
  }

  late final _$favoritesAtom =
      Atom(name: '_MyAppState.favorites', context: context);

  @override
  ObservableSet<WordPair> get favorites {
    _$favoritesAtom.reportRead();
    return super.favorites;
  }

  @override
  set favorites(ObservableSet<WordPair> value) {
    _$favoritesAtom.reportWrite(value, super.favorites, () {
      super.favorites = value;
    });
  }

  late final _$_MyAppStateActionController =
      ActionController(name: '_MyAppState', context: context);

  @override
  void getNext() {
    final _$actionInfo =
        _$_MyAppStateActionController.startAction(name: '_MyAppState.getNext');
    try {
      return super.getNext();
    } finally {
      _$_MyAppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleFavorite() {
    final _$actionInfo = _$_MyAppStateActionController.startAction(
        name: '_MyAppState.toggleFavorite');
    try {
      return super.toggleFavorite();
    } finally {
      _$_MyAppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
current: ${current},
favorites: ${favorites}
    ''';
  }
}
