import 'package:flutter/material.dart';
import '../sign_in_controller/sign_in_controller/sign_in_controller.dart';

class SignInView extends StatelessWidget {
  SIgnInController sIgnInController = SIgnInController();

  SignInView({super.key, required this.sIgnInController});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Form(
            key: sIgnInController.signInFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "EO Bangladesh",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * (5 / 100),
                ),
                TextFormField(
                  controller: sIgnInController.gmailTextEditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: "Email",
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Email is required";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * (1 / 100),
                ),
                TextFormField(
                  controller: sIgnInController.passwordTextEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: "Password",
                  ),
                  validator: (String? password) {
                    if (password!.isEmpty) {
                      return "Password is required";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * (2 / 100),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      sIgnInController.onSIgnInPressedBtn(context);
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
