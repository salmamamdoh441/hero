// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA8PFL_CUEk25RdmSUyDD85G8Xv2rYCQ9w',
    appId: '1:1017033433688:web:50e4f5febec565cb69e02d',
    messagingSenderId: '1017033433688',
    projectId: 'heroo-716fb',
    authDomain: 'heroo-716fb.firebaseapp.com',
    storageBucket: 'heroo-716fb.appspot.com',
    measurementId: 'G-DPLE96WJ39',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLvVAY6NYrwlRXVCR0LzLz87Or6nIdTy4',
    appId: '1:1017033433688:android:eb06d8be5b6859fe69e02d',
    messagingSenderId: '1017033433688',
    projectId: 'heroo-716fb',
    storageBucket: 'heroo-716fb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRzSEDM_1bqPL9-SHlKGQsDYE27tCjdKc',
    appId: '1:1017033433688:ios:0df56b6e03e1db2769e02d',
    messagingSenderId: '1017033433688',
    projectId: 'heroo-716fb',
    storageBucket: 'heroo-716fb.appspot.com',
    iosBundleId: 'com.example.hero',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRzSEDM_1bqPL9-SHlKGQsDYE27tCjdKc',
    appId: '1:1017033433688:ios:fc720a768701353369e02d',
    messagingSenderId: '1017033433688',
    projectId: 'heroo-716fb',
    storageBucket: 'heroo-716fb.appspot.com',
    iosBundleId: 'com.example.hero.RunnerTests',
  );
}
