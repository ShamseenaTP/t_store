import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Called from main.dart on app launch
  @override
  void onReady() {
    // remove the splash screen
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    screenRedirect();
  }

  /// Function to show relevant screen
  screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    // Check if it's the first time laughing the app
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }

  /*----------------------------- Email and Password Sign In ---------------------------------- */

  /// [Email Authentication] - SignIn
  /// [Email Authentication] - Register
  /// [ReAuthenticate] - ReAuthenticate User
  /// [Email Verification] - Mail Verification
  /// [Email Authentication] - Forget Password

  /*----------------------------- Federated Identity and social signIn ---------------------------------- */

  /// [google Authentication] - google
  /// [faceBook Authentication] - facebook

  /*----------------------------- \.end Federated Identity and social signIn ---------------------------------- */

  /// [Logout user] - Valid for any authentication
  /// [Delete User] - Remove user auth and fireStore account
}
