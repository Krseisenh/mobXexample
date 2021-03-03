// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CovidStore on _CovidStore, Store {
  final _$_covidFutureAtom = Atom(name: '_CovidStore._covidFuture');

  @override
  ObservableFuture<Covid> get _covidFuture {
    _$_covidFutureAtom.reportRead();
    return super._covidFuture;
  }

  @override
  set _covidFuture(ObservableFuture<Covid> value) {
    _$_covidFutureAtom.reportWrite(value, super._covidFuture, () {
      super._covidFuture = value;
    });
  }

  final _$covidAtom = Atom(name: '_CovidStore.covid');

  @override
  Covid get covid {
    _$covidAtom.reportRead();
    return super.covid;
  }

  @override
  set covid(Covid value) {
    _$covidAtom.reportWrite(value, super.covid, () {
      super.covid = value;
    });
  }

  final _$isLoadedAtom = Atom(name: '_CovidStore.isLoaded');

  @override
  bool get isLoaded {
    _$isLoadedAtom.reportRead();
    return super.isLoaded;
  }

  @override
  set isLoaded(bool value) {
    _$isLoadedAtom.reportWrite(value, super.isLoaded, () {
      super.isLoaded = value;
    });
  }

  final _$errorMessageAtom = Atom(name: '_CovidStore.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$getCovidTHDataAsyncAction = AsyncAction('_CovidStore.getCovidTHData');

  @override
  Future<dynamic> getCovidTHData() {
    return _$getCovidTHDataAsyncAction.run(() => super.getCovidTHData());
  }

  @override
  String toString() {
    return '''
covid: ${covid},
isLoaded: ${isLoaded},
errorMessage: ${errorMessage}
    ''';
  }
}
