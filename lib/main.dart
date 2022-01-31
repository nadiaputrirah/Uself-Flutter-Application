import 'package:flutter/material.dart';
import 'package:uself/theme.dart';
import 'package:uself/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: PreviewWidget(), debugShowCheckedModeBanner: false,
    );
  }
}

class PreviewWidget extends StatefulWidget{
  @override
  _PreviewWidgetState createState() => _PreviewWidgetState();
}

class _PreviewWidgetState extends State<PreviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Container(
          padding: const EdgeInsets.only(top: 50.0, left: 24, right: 24),
          child: Column(
            children:<Widget>[
              Center(
                child : Image.asset(
                  'images/preview-img.png',
                  width: 270,
                  height: 260,
                ),
              ),

              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text (
                    'USELF',
                    style: titleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text (
                    'Utamakan kebahagiaan anda dibanding \nkebahagiaan orang lain',
                    style: subtitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              SizedBox(height: 150),
              Column(
                children: [
                  Container(
                    width: 260,
                    height: 98,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 48.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xff6255A5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(71),
                            )
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage() ));
                        }, child: Text(
                        'Lanjut',
                        style: buttonTextStyle,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}

