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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = const FirebaseOptions(
    apiKey: 'AIzaSyCfmRxupclFuwI19fSXAeiBZfjFIeeBVJw',
    appId: '1:797976019931:android:b24fc7e7f41078f530ddfe',
    messagingSenderId: '797976019931',
    projectId: 'flutter-chat-afd1b',
    storageBucket: 'flutter-chat-afd1b.appspot.com',
  );

  static const FirebaseOptions ios = const FirebaseOptions(
    apiKey: 'AIzaSyD-IMjNZSJNvDSCxFI94eJtRCZtIeWBD1o',
    appId: '1:797976019931:ios:de1f83b72008ee5930ddfe',
    messagingSenderId: '797976019931',
    projectId: 'flutter-chat-afd1b',
    storageBucket: 'flutter-chat-afd1b.appspot.com',
    iosClientId:
        '797976019931-dlblpsuvdk37ob3993opt7l6loc2g1f0.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseFlutter',
  );
}
