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
    apiKey: 'AIzaSyCqBu2JR9Qkl1_1zwMLqNT-jDAL1u4hPIo',
    appId: '1:917325507824:web:7e521aacc04cbe03b36635',
    messagingSenderId: '917325507824',
    projectId: 'scheduler-96041',
    authDomain: 'scheduler-96041.firebaseapp.com',
    storageBucket: 'scheduler-96041.appspot.com',
    measurementId: 'G-7DTCH5NZQ0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBtc0ztjAKPmEG1QIT838p9ogJMeTmrYLU',
    appId: '1:917325507824:android:2bb1733d54b6014ab36635',
    messagingSenderId: '917325507824',
    projectId: 'scheduler-96041',
    storageBucket: 'scheduler-96041.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyDKz0vf3v3CaMjobrZRQsrYRRREtbJLU',
    appId: '1:917325507824:ios:d1976d086eb8456fb36635',
    messagingSenderId: '917325507824',
    projectId: 'scheduler-96041',
    storageBucket: 'scheduler-96041.appspot.com',
    iosBundleId: 'com.example.helloWorld',
  );
}
