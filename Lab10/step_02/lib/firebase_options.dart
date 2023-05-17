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
    apiKey: 'AIzaSyBAk1AheqWocqdMe1vAOF2GjFn7ied_Ns4',
    appId: '1:863803437361:web:96724a25d7310464684010',
    messagingSenderId: '863803437361',
    projectId: 'lab10-d3fa7',
    authDomain: 'lab10-d3fa7.firebaseapp.com',
    storageBucket: 'lab10-d3fa7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAi6IoE1DLuou-DUVKkuIwzujgaR7iSDFM',
    appId: '1:863803437361:android:b760aa7e528dcdc0684010',
    messagingSenderId: '863803437361',
    projectId: 'lab10-d3fa7',
    storageBucket: 'lab10-d3fa7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCTLqPslMhT0CSrZlC7LOcE5m2Iod4x_9c',
    appId: '1:863803437361:ios:87af935b8cf13c33684010',
    messagingSenderId: '863803437361',
    projectId: 'lab10-d3fa7',
    storageBucket: 'lab10-d3fa7.appspot.com',
    iosClientId: '863803437361-hpqpb6dp1fgjpsb2ek5duqcdh0kfqskk.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCTLqPslMhT0CSrZlC7LOcE5m2Iod4x_9c',
    appId: '1:863803437361:ios:87af935b8cf13c33684010',
    messagingSenderId: '863803437361',
    projectId: 'lab10-d3fa7',
    storageBucket: 'lab10-d3fa7.appspot.com',
    iosClientId: '863803437361-hpqpb6dp1fgjpsb2ek5duqcdh0kfqskk.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );
}
