import 'package:flutter/material.dart';

class MainActivityBody extends StatefulWidget {
  @override
  _MainActivityBodyState createState() => _MainActivityBodyState();
}

class _MainActivityBodyState extends State<MainActivityBody> {

  TextStyle style = new TextStyle(fontSize: 20.0);

  

  @override
  Widget build(BuildContext context) {

    final referralButton = Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(2.0),
              color: Color(0xff0b77bf),
              child: MaterialButton(
                height: 50.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                },
                child: Text("REFERRALS",
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            );
    final approvedButton = Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(2.0),
              color: Color(0xff0b77bf),
              child: MaterialButton(
                height: 50.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                },
                child: Text("APPROVED",
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            );
    final pendingButton = Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(2.0),
              color: Color(0xff0b77bf),
              child: MaterialButton(
                height: 50.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                },
                child: Text("PENDING",
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            );
    final rejectedButton = Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(2.0),
              color: Color(0xff0b77bf),
              child: MaterialButton(
                height: 50.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                },
                child: Text("REJECTED",
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            );

    return SingleChildScrollView(
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 64.0,),
              Text("Invite your friend\nand earn money", textAlign: TextAlign.center, 
                style: new TextStyle(fontSize: 20.0),
              ),
              
              SizedBox(height: 150.0, child: Image.asset('assets/main_back.png'),),
              
              Container(
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                          child: referralButton,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                          child: pendingButton,
                        ),
                      ),
                    ]),
                    SizedBox(height: 16.0,),
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                          child: referralButton,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                          child: pendingButton,
                        ),
                      ),
                    ])
                  ],
                ),
              )

              
                
            ],
          ),
        ),
      )
    );
  }
}