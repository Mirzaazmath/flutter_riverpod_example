import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/main.dart';

/// Here we are Extending our class with ConsumerWidget to utilize our providers in this class
/// Note : ConsumerWidget == StatelessWidget
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  /// here we are adding another parameter WidgetRef in build method of this class
  /// WidgetRef help us to communicate with StateProvider to get the data
  Widget build(BuildContext context, WidgetRef ref) {
    ///here we are fetching the user Object from userProvider  using read method and added select to avoid un-useful rebuilds
    final name = ref.watch(userProvider.select((value)=>value.name));
    return Scaffold(
      appBar: AppBar(title: Text("Flutter RiverPod Example")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(name, style: TextStyle(fontSize: 24))),
            Center(
              child: Text("Age : ${26}", style: TextStyle(fontSize: 24)),
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
