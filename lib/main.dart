import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/screens/sign_in/sign_in_controller/sign_in_controller/sign_in_controller.dart';
import 'package:flutter_firebase_project/screens/sign_in/sign_in_view/sign_in_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  SIgnInController sIgnInController = SIgnInController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: SignInView(
        sIgnInController: sIgnInController,
      ),
    );
  }
}
