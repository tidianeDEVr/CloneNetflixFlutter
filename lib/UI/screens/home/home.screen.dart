import 'package:clone_netflix/shared/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bbwBackgroundColor,
      appBar: AppBar(
        backgroundColor: bbwBackgroundColor,
        leading: Image.asset("lib/assets/images/netflix_logo.png"),
      ),
      // ignore: prefer_const_constructors
      body: Body(),
    );
  }
}
