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
    apiKey: 'AIzaSyAVQ-bpEBGWNSzCYBKiHq6gNQyqd2PxW9Q',
    appId: '1:189384765046:web:5c5ba4e55ced5340113957',
    messagingSenderId: '189384765046',
    projectId: 'brew-crew-f2939',
    authDomain: 'brew-crew-f2939.firebaseapp.com',
    storageBucket: 'brew-crew-f2939.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDp8ei59C-9AstHBaesryKvL49lLSBjQJs',
    appId: '1:189384765046:android:607718147bb93066113957',
    messagingSenderId: '189384765046',
    projectId: 'brew-crew-f2939',
    storageBucket: 'brew-crew-f2939.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyflGQb4mFSA6ZKSTgDr4Q1sBjkfh2944',
    appId: '1:189384765046:ios:809692fa01bc5002113957',
    messagingSenderId: '189384765046',
    projectId: 'brew-crew-f2939',
    storageBucket: 'brew-crew-f2939.appspot.com',
    iosClientId: '189384765046-9vnvnsf2693ashbtv3j9bo7e1vesbrvs.apps.googleusercontent.com',
    iosBundleId: 'com.example.brewCrew',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDyflGQb4mFSA6ZKSTgDr4Q1sBjkfh2944',
    appId: '1:189384765046:ios:3155e9ea0a529abf113957',
    messagingSenderId: '189384765046',
    projectId: 'brew-crew-f2939',
    storageBucket: 'brew-crew-f2939.appspot.com',
    iosClientId: '189384765046-eg98a7c2gv1kb3qfscd3h1daf6rcn8m9.apps.googleusercontent.com',
    iosBundleId: 'com.example.brewCrew.RunnerTests',
  );
}
