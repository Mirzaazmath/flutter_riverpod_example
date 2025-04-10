import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/screens/home_screen2.dart';
import 'package:flutter_riverpod_example/screens/home_screen3.dart';

import 'screens/home_screen.dart';

void main() {
  /// here we are wrapping our MyApp with ProviderScope so that we can access all provider in our entire app
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen3());
  }
}

/// RiverPod StateProvider

/// here we have created a State provider of dynamic type value which can able Updatable
final nameProvider = StateProvider((ref) => "Mirza Azmathullah Baig");

/// here we have created a State provider of Specific type value which can able Updatable
final ageProvider = StateProvider<int>((ref) => 25);
