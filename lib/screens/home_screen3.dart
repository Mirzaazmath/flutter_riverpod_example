import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';

/// Here we are Extending our class with ConsumerStatefulWidget to utilize our providers in this class
/// Note : ConsumerStatefulWidget == StateFullWidget
class HomeScreen3 extends ConsumerStatefulWidget {
  const HomeScreen3({super.key});

  @override
  /// here we have replace State to ConsumerState to use provider
  ConsumerState<HomeScreen3> createState() => _HomeScreen3State();
}
/// here we have replace State to ConsumerState to use provider
class _HomeScreen3State extends ConsumerState<HomeScreen3> {

  @override
  Widget build(BuildContext context) {
    ///here we are fetching the name from nameProvider  using read method
    final name = ref.read(nameProvider);

    ///here we are fetching the age  from nameProvider using read method
    final age = ref.read(ageProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Flutter RiverPod Example")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(name, style: TextStyle(fontSize: 24))),
          Center(child: Text("Age : $age", style: TextStyle(fontSize: 24))),
        ],
      ),
    );
  }
}
