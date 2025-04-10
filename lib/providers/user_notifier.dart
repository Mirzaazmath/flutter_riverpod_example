import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user_model.dart';

/// Here we have created one UserNotifier which is extends from StateNotifier of type  User
class UserNotifier extends StateNotifier<User>{
  /// Here we are created a constructor of this class with default state
  UserNotifier(super.state);

  /// Here we have created a method which update the name value of our state and notify the listeners
  void updateName(String n){
    /// here we are using copyWith method to only change name value not all the values of our state object
    state = state.copyWith(name: n);
  }



}