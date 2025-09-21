import 'package:flutter/material.dart';

class AppData with ChangeNotifier {
  UserProfile userProfile = UserProfile();
  String userEmail = '';
}

class UserProfile {
  int idx = 0;
  String fullname = '';
}