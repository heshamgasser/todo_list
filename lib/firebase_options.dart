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
    apiKey: 'AIzaSyBzgU6Aasotl9c3Lre-4L632BcglK2PQDA',
    appId: '1:978933026843:web:d101087e75e9c0eaa428be',
    messagingSenderId: '978933026843',
    projectId: 'todo-list-eb158',
    authDomain: 'todo-list-eb158.firebaseapp.com',
    storageBucket: 'todo-list-eb158.appspot.com',
    measurementId: 'G-QJTMR7HPCD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDd09HVRpUmRBkRsKJ230tv3gHAQg_H6gI',
    appId: '1:978933026843:android:9ad0ca8f87d168cca428be',
    messagingSenderId: '978933026843',
    projectId: 'todo-list-eb158',
    storageBucket: 'todo-list-eb158.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnCXE636fUqYx2CqNw2S44mvHMAawTe8Y',
    appId: '1:978933026843:ios:79bfc12645ea1303a428be',
    messagingSenderId: '978933026843',
    projectId: 'todo-list-eb158',
    storageBucket: 'todo-list-eb158.appspot.com',
    iosBundleId: 'com.example.todo',
  );
}
