import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/services/flavor_config/flavor_config.dart';
import 'package:flutter_firebase_project/services/utils/colors/colors.dart';

import 'main_common.dart';

void main(){

  final stagingHotCake = FlavorConfig(
      appTitle: "Staging Hot Cake",
      apiEndPoint: {
        Endpoints.exampleEndpoint: "https://example_staging_hot_Cake.com",
      },
      theme:
      ThemeData.light().copyWith(
          primaryColor: const EoColors().eoPrimaryTextColor,
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
              backgroundColor: const EoColors().eoPrimaryTextColor
          )
      )
  );
  mainCommon(stagingHotCake);
}