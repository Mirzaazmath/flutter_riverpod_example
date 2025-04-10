import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/main.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter RiverPod Example")),
      /// Here we are using  Consumer with to access the Providers
      body: Consumer(
        builder: (context, ref, child) {
          ///here we are fetching the name from nameProvider  using read method
          final name = ref.read(nameProvider);

          ///here we are fetching the age  from nameProvider using read method
          final age = ref.read(ageProvider);

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text(name, style: TextStyle(fontSize: 24))),
              Center(child: Text("Age : $age", style: TextStyle(fontSize: 24))),
            ],
          );
        },
      ),
    );
  }
}
