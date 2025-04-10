import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/home_screen.dart';

void main() {
  /// here we are wrapping our MyApp with ProviderScope so that we can access all provider in our entire app
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

/// RiverPod Provider

/// here we have created a normal provider of dynamic type value
final nameProvider = Provider((ref) => "Mirza Azmathullah Baig");

/// here we have created a normal provider of Specific type value
final ageProvider = Provider<int>((ref) => 25);
