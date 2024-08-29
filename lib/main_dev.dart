import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/main_common.dart';
import 'package:flutter_firebase_project/services/flavor_config/flavor_config.dart';
import 'package:flutter_firebase_project/services/utils/colors/colors.dart';

void main(){

  final devCookieConfig = FlavorConfig(
      appTitle: "Development cookie",
      apiEndPoint: {
        Endpoints.exampleEndpoint: "https://example_development_cookie.com",
      },
      theme:
      ThemeData.light().copyWith(
          primaryColor: const EoColors().eoPrimaryTextColor,
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
              backgroundColor: const EoColors().eoPrimaryTextColor
          )
      )
  );
  mainCommon(devCookieConfig);
}