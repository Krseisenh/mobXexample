import 'package:ecms_thai/pages/dashboard_page.dart';
import 'package:ecms_thai/pages/register_page.dart';
import 'package:ecms_thai/stores/user_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserStore userStore = Provider.of<UserStore>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 300.0,
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10.0,
                    height: 10.0,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    initialValue: userStore.email,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'admin@example.com',
                    ),
                    onChanged: (String email) => userStore.updateEmail(email),
                    validator: (String email) =>
                        email.isEmpty ? 'provide' : null,
                  ),
                  SizedBox(
                    width: 10.0,
                    height: 10.0,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    initialValue: userStore.password,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    onChanged: (String password) =>
                        userStore.updatePassword(password),
                    validator: (String password) =>
                        password.isEmpty ? 'provide' : null,
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      onPressed: () {
                        if (userStore.email.isNotEmpty &&
                            userStore.password.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DashboardPage(),
                            ),
                          );
                        }
                      },
                      child: Text('Log in'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => RegisterPage(),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      child: Observer(
                        builder: (_) => Text(userStore.email),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
