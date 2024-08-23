import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/screens/home_page/home_view/home_view.dart';

class SIgnInController {
  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

  TextEditingController gmailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  void onSIgnInPressedBtn(BuildContext context) {
    print("Sign in successful");
    if (signInFormKey.currentState!.validate()) {
      signInFormKey.currentState!.save();
      gmailTextEditingController.clear();
      passwordTextEditingController.clear();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomeView()));
    }
  }
}