import 'package:flutter/material.dart';
import 'package:flutter_firebase_project/main_common.dart';
import 'package:flutter_firebase_project/services/flavor_config/flavor_config.dart';

import 'services/utils/colors/colors.dart';

void main(){
  final productionCoffeeConfig = FlavorConfig(
      appTitle: "Production coffee",
      apiEndPoint: {
        Endpoints.exampleEndpoint: "https://example_production_coffee.com ",
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: const EoColors().eoSecondaryColor,
          appBarTheme: ThemeData.dark(
            useMaterial3: true,
          ).appBarTheme.copyWith(
              backgroundColor: const EoColors().eoSignOutIconColor
          )
      )
  );
  mainCommon(productionCoffeeConfig);
}