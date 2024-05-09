import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hero/api/firebase_api.dart';
import 'package:hero/notification.dart';

import 'detail.dart';
import 'firebase_options.dart';
import 'google_maps.dart';
import 'home.dart';
import 'homeless.dart';
import 'map.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  await FirebaseApi().initNotifications();

  runApp(const MyApp());
}
// GoRouter approuter = GoRouter(routes: [
//   GoRoute(
//       path: "/",
//     builder: (BuildContext context , GoRouterState state){
//         return const HomeScreen();
//     }
//
//
//
//
//
//
//   ),
//   GoRoute(
//       path: "/notification-screen",
//       builder: (BuildContext context , GoRouterState state){
//         return const NotificationScreen();
//       }
//
//
//
//
//
//
//   ),
//
//
// ]);
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home:  HomePage(),
      routes: {
        NotificationScreen.route :(context) => const NotificationScreen(),
        HomeLessScreen.route :(context) => const HomeLessScreen(),
      },
    );
    //   MaterialApp.router (
    //   debugShowCheckedModeBanner: false,
    //   routerConfig: approuter,
    //   key: navigatorKey,
    //
    //
    // );
  }
}





