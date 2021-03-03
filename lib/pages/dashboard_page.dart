import 'package:ecms_thai/stores/covid_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void didChangeDependencies() {
    final CovidStore covidStore =
        Provider.of<CovidStore>(context, listen: false);
    covidStore.getCovidTHData();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final CovidStore covidStore =
        Provider.of<CovidStore>(context, listen: true);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Observer(
              builder: (_) {
                if (covidStore.isLoaded) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(covidStore.covid.confirmed.toString()),
                      SizedBox(
                        height: 10,
                      ),
                      Text(covidStore.covid.recovered.toString()),
                    ],
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
