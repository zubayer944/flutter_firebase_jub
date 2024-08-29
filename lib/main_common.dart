import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/screens/home_page/home_view/home_view.dart';
import 'package:flutter_firebase_project/screens/sign_in/sign_in_controller/sign_in_controller/sign_in_controller.dart';
import 'package:flutter_firebase_project/screens/sign_in/sign_in_view/sign_in_view.dart';
import 'package:flutter_firebase_project/services/flavor_config/flavor_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

var flavorConfigProvider;

void mainCommon(FlavorConfig config) {
  flavorConfigProvider = StateProvider<FlavorConfig>((ref) => config);

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final SIgnInController sIgnInController = SIgnInController();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final flavorConfig = ref.watch(flavorConfigProvider);
      final theme = ref.watch(themeProvider);

      return ResponsiveSizer(builder: (context, orientation, deviceType) {
        print("flavor app title:--->>>${flavorConfig.appTitle}");
        print("flavor endpoint --->>>${flavorConfig.apiEndPoint[Endpoints.exampleEndpoint]}");
        return MaterialApp(
          debugShowCheckedModeBanner: flavorConfig.appTitle == "Production coffee" ? false : true,
          title: flavorConfig.appTitle,
          // theme: flavorConfig.theme,
          themeMode: theme,
          home: SignInView(
            sIgnInController: sIgnInController,
          ),
        );
      });
    });
  }
}
