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
    apiKey: 'AIzaSyD5UVsLAz7uXnUT13189BprYOZLd8tdeqs',
    appId: '1:164473748704:web:b1325e9a039fd2dda1e485',
    messagingSenderId: '164473748704',
    projectId: 'final-project-ec64a',
    authDomain: 'final-project-ec64a.firebaseapp.com',
    storageBucket: 'final-project-ec64a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwyshutkhNt2gBZPi4lznem6A7iP60v1U',
    appId: '1:164473748704:android:d7a84e4c90a51411a1e485',
    messagingSenderId: '164473748704',
    projectId: 'final-project-ec64a',
    storageBucket: 'final-project-ec64a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjtj8pjvCPad5fbAhDCrjr0GRJIS0EjUY',
    appId: '1:164473748704:ios:57184e04027087dba1e485',
    messagingSenderId: '164473748704',
    projectId: 'final-project-ec64a',
    storageBucket: 'final-project-ec64a.appspot.com',
    iosClientId:
        '164473748704-6dru1qvogm9n2cr6mq0tlksgbgclb36e.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBjtj8pjvCPad5fbAhDCrjr0GRJIS0EjUY',
    appId: '1:164473748704:ios:57184e04027087dba1e485',
    messagingSenderId: '164473748704',
    projectId: 'final-project-ec64a',
    storageBucket: 'final-project-ec64a.appspot.com',
    iosClientId:
        '164473748704-6dru1qvogm9n2cr6mq0tlksgbgclb36e.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD5UVsLAz7uXnUT13189BprYOZLd8tdeqs',
    appId: '1:164473748704:web:c76b66d64e93d069a1e485',
    messagingSenderId: '164473748704',
    projectId: 'final-project-ec64a',
    authDomain: 'final-project-ec64a.firebaseapp.com',
    storageBucket: 'final-project-ec64a.appspot.com',
  );
}
