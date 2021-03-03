import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore extends _UserStore with _$UserStore {}

abstract class _UserStore with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @action
  void updateEmail(String email) {
    this.email = email;
  }

  @action
  void updatePassword(String password) {
    this.password = password;
  }

  @action
  void clearData() {
    this.email = '';
    this.password = '';
  }
}
