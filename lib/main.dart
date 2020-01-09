import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'RegisterPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Welcome to Flutter'),
        // ),
        body: Center(
          child: MainPage(),
        ),
      ),
    );
  }
}


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);


  

  @override
  Widget build(BuildContext context) {

    final loginButon = Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xffe37528),
              child: MaterialButton(
                minWidth: 300.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) => LoginPage()
                  ));
                },
                child: Text("Login",
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            );
    final registerButton = Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xffe37528),
              child: MaterialButton(
                minWidth: 300.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => RegisterPage()
                  ));
                },
                child: Text("Register",
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            );

    return Scaffold(
      body: Center(
          child: Container(
            
              decoration: BoxDecoration(
                color: Colors.white
                // image: DecorationImage(
                //   image: AssetImage("assets/background.png"),
                //   fit: BoxFit.fitHeight
                // )
              ),
              child: Center(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                SizedBox(
                  height: 80.0,
                  child: Image.asset("assets/referral.png",
                  fit: BoxFit.fitHeight,),
                ),SizedBox(height: 48.0,),
                loginButon,
                SizedBox(height: 16.0,),
                registerButton
              ],),
            ),
        )
      ),
    );
  }
}