import 'package:flutter/material.dart';

enum Endpoints {
  // Define your endpoints here
  exampleEndpoint
}

class FlavorConfig {
  final String appTitle;
  final Map<Endpoints, String> apiEndPoint;
  final String imageLocation;
  final ThemeData theme;

  FlavorConfig({
    this.appTitle = "Flavor Basic",
    this.imageLocation = "assets/icons/apex_dmit.png",
    Map<Endpoints, String>? apiEndPoint,
    ThemeData? theme,
  })  : apiEndPoint = apiEndPoint ?? {},
        theme = theme ?? ThemeData.light(useMaterial3: false);
}
