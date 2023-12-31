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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC1qKKYiF584HJ2OwrMJ14n8PuRMuW7JSs',
    appId: '1:943500539628:web:17b6ae2c9be0522b2b97c9',
    messagingSenderId: '943500539628',
    projectId: 'todo-list-47f1b',
    authDomain: 'todo-list-47f1b.firebaseapp.com',
    storageBucket: 'todo-list-47f1b.appspot.com',
    measurementId: 'G-QMN35SS48G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-GHrfwxFcSKoz-WVnGDoftMqOIEyqAcw',
    appId: '1:943500539628:android:c8ee35ec4a44591e2b97c9',
    messagingSenderId: '943500539628',
    projectId: 'todo-list-47f1b',
    storageBucket: 'todo-list-47f1b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDI8uU-Utrh020PuG-oWTPRQFlMVSekfHU',
    appId: '1:943500539628:ios:9d3af3b63cf4d2482b97c9',
    messagingSenderId: '943500539628',
    projectId: 'todo-list-47f1b',
    storageBucket: 'todo-list-47f1b.appspot.com',
    iosBundleId: 'com.example.todo',
  );
}
