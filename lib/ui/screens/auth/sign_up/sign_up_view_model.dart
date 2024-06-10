import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

class SignUpViewModel extends BaseViewModel {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool passswordVisibilty = true;
  bool passswordVisibilty1 = true;
  togglePasswordVisibility() {
    passswordVisibilty = !passswordVisibilty;
    notifyListeners();
  }

  togglePasswordVisibility1() {
    passswordVisibilty1 = !passswordVisibilty1;
    notifyListeners();
  }
}
