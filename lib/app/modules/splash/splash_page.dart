import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();

    // Future.delayed(Duration(seconds: 1))
    //     .then((value) => PermissionsService().requestLocalStorage());

    // Future.delayed(Duration(seconds: 4))
    //     .then((value) => Modular.to.pushReplacementNamed('/terras'));
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2))
        .then((value) => Modular.to.pushReplacementNamed('/home'));
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "assets/icon/icon.png",
                      fit: BoxFit.cover,
                      scale: 4,
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Center(
                    child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                  strokeWidth: 2,
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
