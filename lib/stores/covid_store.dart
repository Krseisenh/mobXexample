import 'package:ecms_thai/models/covid.dart';
import 'package:ecms_thai/services/covid_services.dart';
import 'package:mobx/mobx.dart';

part 'covid_store.g.dart';

class CovidStore extends _CovidStore with _$CovidStore {}

abstract class _CovidStore with Store {
  @observable
  ObservableFuture<Covid> _covidFuture;

  @observable
  Covid covid;

  @observable
  bool isLoaded = true;

  @observable
  String errorMessage;

  @action
  Future getCovidTHData() async {
    try {
      errorMessage = null;
      this.isLoaded = false;
      _covidFuture = ObservableFuture(
        CovidService().loadCovidData(),
      );
      covid = await _covidFuture;
      this.isLoaded = true;
    } catch (e) {
      errorMessage = "Couldn't fetch Report. Is the device online?";
    }
  }
}
