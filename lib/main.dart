import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/models/user_model.dart';
import 'package:flutter_riverpod_example/providers/user_notifier.dart';
import 'package:flutter_riverpod_example/screens/home_screen2.dart';
import 'package:flutter_riverpod_example/screens/home_screen3.dart';



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

/// RiverPod StateNotifierProvider

/// here we have created a StateNotifierProvider of UserNotifier,User type value which can able Updatable
final userProvider = StateNotifierProvider<UserNotifier,User>((ref)=>UserNotifier(User(name: '', age: 0)));
