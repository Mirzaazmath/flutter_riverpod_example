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
    ///here we are fetching the user Object from userProvider  using read method
    final user = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Flutter RiverPod Example")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(user.name, style: TextStyle(fontSize: 24))),
            Center(
              child: Text("Age : ${user.age}", style: TextStyle(fontSize: 24)),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
              ),
              child: TextField(
                onSubmitted: (value) {
                  /// here we are updating the state of our provider by using .notifier and updateName Method
                  ref.read(userProvider.notifier).updateName(value);
                },
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
