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
          final name = ref.watch(nameProvider);

          ///here we are fetching the age  from nameProvider using read method
          final age = ref.read(ageProvider);

          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text(name, style: TextStyle(fontSize: 24))),
                Center(child: Text("Age : $age", style: TextStyle(fontSize: 24))),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all()
                  ),
                  child: TextField(
                    onSubmitted: (value){
                      /// here we are updating the state of our provider by using .notifier and update Method

                      ref.read(nameProvider.notifier).update((state)=>value);
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,

                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
