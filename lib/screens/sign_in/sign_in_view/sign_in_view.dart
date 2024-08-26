import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/services/utils/colors/colors.dart';
import 'package:sizer/sizer.dart';
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/splash_icons/logo.png",
                    height: 15.h,
                    width: 30.w,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Sign in",style: TextStyle(fontSize: 20.sp,color: const EoColors().eoPrimaryTextColor),)),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  TextFormField(
                    controller: sIgnInController.gmailTextEditingController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: const Text("Email Address"),
                      hintText: "Email",
                      contentPadding: EdgeInsets.all(2.0.h),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0.sp),
                        borderSide: BorderSide(color: const EoColors().eoTextBoxBorderColor, width: 0.5.w), // Set the border color and width here
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0.sp),
                        borderSide: BorderSide(color: const EoColors().eoTextBoxBorderColor, width: 0.5.w), // Border color when focused
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0.sp),
                        borderSide: BorderSide(color: Colors.red, width: 0.5.w), // Border color when there's an error
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0.sp),
                        borderSide: BorderSide(color: Colors.red, width: 0.5.w), // Border color when focused with error
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined, // Use the desired icon here
                        color: const EoColors().eoTextBoxBorderColor,
                      ),
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
                    height: 2.h,
                  ),
                  TextFormField(
                controller: sIgnInController.passwordTextEditingController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: const Text("Password"),
                  hintText: "Password",
                  contentPadding: EdgeInsets.all(2.0.h),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0.sp),
                    borderSide: BorderSide(
                      color: const EoColors().eoTextBoxBorderColor, // Default border color
                      width: 0.5.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0.sp),
                    borderSide: BorderSide(
                      color: const EoColors().eoTextBoxBorderColor, // Border color when focused
                      width: 0.5.w,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0.sp),
                    borderSide: BorderSide(
                      color: Colors.red, // Border color when there's an error
                      width: 0.5.w,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0.sp),
                    borderSide: BorderSide(
                      color: Colors.red, // Border color when focused with error
                      width: 0.5.w,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.lock_outline, // Icon to show in the prefix
                    color: const EoColors().eoTextBoxBorderColor, // Icon color
                  ),
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
                    height: 3.h,
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
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
