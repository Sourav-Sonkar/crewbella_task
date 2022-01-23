import 'package:crewbella_task/network/network.dart';
import 'package:crewbella_task/screen/screen_1.dart';
import 'package:crewbella_task/screen/screen_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NetworkConnection networkConnection = NetworkConnection();
  runApp(MyApp(networkConnection: networkConnection));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.networkConnection}) : super(key: key);
  final NetworkConnection networkConnection;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => networkConnection,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: ScreenOne(),
        routes: {
          ScreenOne.routeName: (context) => ScreenOne(),
          ScreenTwo.routeName: (context) => const ScreenTwo(),
        },
      ),
    );
  }
}
