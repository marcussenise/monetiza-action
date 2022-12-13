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
    apiKey: 'AIzaSyB-YVtdFZ1Nt_9KHxxWmip2_RwdCjvOmD4',
    appId: '1:212159176816:web:8c27f75f95ae2b0fb3d4b5',
    messagingSenderId: '212159176816',
    projectId: 'apfinancas-6556f',
    authDomain: 'apfinancas-6556f.firebaseapp.com',
    databaseURL: 'https://apfinancas-6556f-default-rtdb.firebaseio.com',
    storageBucket: 'apfinancas-6556f.appspot.com',
    measurementId: 'G-D07FVQ2TXR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3VVKEmtN23kjpW6GQyDDoAFswSb4IVjg',
    appId: '1:212159176816:android:7bd7fbcf831ce594b3d4b5',
    messagingSenderId: '212159176816',
    projectId: 'apfinancas-6556f',
    databaseURL: 'https://apfinancas-6556f-default-rtdb.firebaseio.com',
    storageBucket: 'apfinancas-6556f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAknNzMBkYv8OV7KLM2koC0lA8y1HUHbWY',
    appId: '1:212159176816:ios:2988a0c0f1965674b3d4b5',
    messagingSenderId: '212159176816',
    projectId: 'apfinancas-6556f',
    databaseURL: 'https://apfinancas-6556f-default-rtdb.firebaseio.com',
    storageBucket: 'apfinancas-6556f.appspot.com',
    iosClientId: '212159176816-6osusokb4iocfdrv9ffo3cu0uarbtje5.apps.googleusercontent.com',
    iosBundleId: 'com.example.projetoFinalFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAknNzMBkYv8OV7KLM2koC0lA8y1HUHbWY',
    appId: '1:212159176816:ios:2988a0c0f1965674b3d4b5',
    messagingSenderId: '212159176816',
    projectId: 'apfinancas-6556f',
    databaseURL: 'https://apfinancas-6556f-default-rtdb.firebaseio.com',
    storageBucket: 'apfinancas-6556f.appspot.com',
    iosClientId: '212159176816-6osusokb4iocfdrv9ffo3cu0uarbtje5.apps.googleusercontent.com',
    iosBundleId: 'com.example.projetoFinalFlutter',
  );
}
