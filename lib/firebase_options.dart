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
    apiKey: 'AIzaSyA1CTQMauK2tRQNDPWcJ0Z5snBDIMQ3gGc',
    appId: '1:862592511721:web:018af0be00692d55854a78',
    messagingSenderId: '862592511721',
    projectId: 'comfey-813c9',
    authDomain: 'comfey-813c9.firebaseapp.com',
    databaseURL:
        'https://comfey-813c9-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'comfey-813c9.appspot.com',
    measurementId: 'G-31XS8Q6PEL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCX2qPu-D-KnzQL5ol0hPCnv4V9tYU5U0w',
    appId: '1:862592511721:android:90616cd43a7adae1854a78',
    messagingSenderId: '862592511721',
    projectId: 'comfey-813c9',
    databaseURL:
        'https://comfey-813c9-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'comfey-813c9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFDb4iVQaldcdUPUJk9ScBbkkCLV9qDtg',
    appId: '1:862592511721:ios:4d2d459bee05da0f854a78',
    messagingSenderId: '862592511721',
    projectId: 'comfey-813c9',
    databaseURL:
        'https://comfey-813c9-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'comfey-813c9.appspot.com',
    iosBundleId: 'com.example.comfey',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFDb4iVQaldcdUPUJk9ScBbkkCLV9qDtg',
    appId: '1:862592511721:ios:4d2d459bee05da0f854a78',
    messagingSenderId: '862592511721',
    projectId: 'comfey-813c9',
    databaseURL:
        'https://comfey-813c9-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'comfey-813c9.appspot.com',
    iosBundleId: 'com.example.comfey',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA1CTQMauK2tRQNDPWcJ0Z5snBDIMQ3gGc',
    appId: '1:862592511721:web:53bcbb3028042e2c854a78',
    messagingSenderId: '862592511721',
    projectId: 'comfey-813c9',
    authDomain: 'comfey-813c9.firebaseapp.com',
    databaseURL:
        'https://comfey-813c9-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'comfey-813c9.appspot.com',
    measurementId: 'G-86MV7TSWPK',
  );
}
