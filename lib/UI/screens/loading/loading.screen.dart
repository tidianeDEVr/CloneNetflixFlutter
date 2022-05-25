import 'package:clone_netflix/UI/screens/home/home.screen.dart';
import 'package:clone_netflix/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../../../repositories/data.repository.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    initData();
  }

  Future<void> initData() async {
    final dataProvider = Provider.of<DataRepository>(context, listen: false);
    await dataProvider.initData();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
      return const HomeScreen();
    })));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bbwBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/assets/images/netflix_logo.png', height: 200),
          const SpinKitRing(
            color: bbwPrimaryColor,
            size: 50,
            duration: Duration(seconds: 10),
          )
        ],
      ),
    );
  }
}
