import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInProvider extends ChangeNotifier {
  bool _isSignedIn = false;
  bool get isSignedIn => _isSignedIn;

  // hasError. errorCode, provider, uid, email, name, imageUrl 
  

  SignInProvider() {
    checkSignInUser();
  }

  Future checkSignInUser() async {
    var s = await SharedPreferences.getInstance();
    _isSignedIn = s.getBool('signed_in') ?? false;
    notifyListeners();
  }
}
