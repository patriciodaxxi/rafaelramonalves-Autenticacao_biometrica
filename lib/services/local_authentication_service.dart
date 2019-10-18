import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

class LocalAuthenticationService {
  final _auth = LocalAuthentication();

 // bool isAuthenticated = false;

  Future<void> authenticate() async {
    try {
      var isAuthenticated = await _auth.authenticateWithBiometrics(
        localizedReason: 'Coloque o dedo no sensor',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }
  }
}
