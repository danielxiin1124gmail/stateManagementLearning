import 'package:mobx/mobx.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

part 'my_app_state.g.dart';

class MyAppState = _MyAppState with _$MyAppState;

abstract class _MyAppState with Store {
  @observable
  WordPair current = WordPair.random();

  @action
  void getNext() {
    current = WordPair.random();
  }

  @observable
  ObservableSet<WordPair> favorites = ObservableSet<WordPair>();

  @action
  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
  }
}
