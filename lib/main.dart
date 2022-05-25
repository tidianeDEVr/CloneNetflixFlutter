import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'UI/screens/loading/loading.screen.dart';
import 'repositories/data.repository.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: ((context) => DataRepository()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clone Netflix',
        theme: ThemeData(),
        home: const LoadingScreen());
  }
}
