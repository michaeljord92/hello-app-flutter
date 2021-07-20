import 'dart:io';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Hello"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.white.withBlue(250),
        child: FutureBuilder(
          future: Future.delayed(Duration(seconds: 2)),
          builder: (context, snapshot) {
            return snapshot.connectionState == ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.black,
                      strokeWidth: 2,
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SelectableText(
                          "Helooooo",
                          style: GoogleFonts.aBeeZee(),
                        ),
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: RaisedButton(
                          onPressed: () {
                            // Modular.to.pop();
                            exit(0);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.close),
                              SizedBox(width: 10),
                              Text("SAIR DO APP"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
