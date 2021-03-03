import 'package:ecms_thai/pages/login_page.dart';
import 'package:ecms_thai/stores/covid_store.dart';
import 'package:ecms_thai/stores/user_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCovid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CovidStore>(
          create: (_) => CovidStore(),
        ),
        Provider<UserStore>(
          create: (_) => UserStore(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage(),
      ),
    );
  }
}
