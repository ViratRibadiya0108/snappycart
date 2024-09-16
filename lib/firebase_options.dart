// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCO8qtQL1hSxVFkDztSb3tfsASLt75VAgI',
    appId: '1:848250691130:web:f8b64e6f9ac4c0fed71f03',
    messagingSenderId: '848250691130',
    projectId: 'snappycart-73139',
    authDomain: 'snappycart-73139.firebaseapp.com',
    storageBucket: 'snappycart-73139.appspot.com',
    measurementId: 'G-LPYFXW6X7D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvKCuaxPpV9XPEVtZ4WTmjSZn8X_GTJts',
    appId: '1:848250691130:android:4ade597b8a1ce60ed71f03',
    messagingSenderId: '848250691130',
    projectId: 'snappycart-73139',
    storageBucket: 'snappycart-73139.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2K_yu3US02Ymaz1C18HLiEpklHy4ssC4',
    appId: '1:848250691130:ios:ed967be4bfd2c9abd71f03',
    messagingSenderId: '848250691130',
    projectId: 'snappycart-73139',
    storageBucket: 'snappycart-73139.appspot.com',
    iosBundleId: 'com.example.snappycart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB2K_yu3US02Ymaz1C18HLiEpklHy4ssC4',
    appId: '1:848250691130:ios:ed967be4bfd2c9abd71f03',
    messagingSenderId: '848250691130',
    projectId: 'snappycart-73139',
    storageBucket: 'snappycart-73139.appspot.com',
    iosBundleId: 'com.example.snappycart',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCO8qtQL1hSxVFkDztSb3tfsASLt75VAgI',
    appId: '1:848250691130:web:0bf105966987f046d71f03',
    messagingSenderId: '848250691130',
    projectId: 'snappycart-73139',
    authDomain: 'snappycart-73139.firebaseapp.com',
    storageBucket: 'snappycart-73139.appspot.com',
    measurementId: 'G-PWPHDQW16C',
  );
}