import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EoProviders {

  final themeModeProvider = StateProvider<ThemeMode>((ref) {
    return ThemeMode.dark;
  });

}