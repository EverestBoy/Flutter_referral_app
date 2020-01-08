import 'package:flutter/material.dart';
import '../Widgets/NavDrawer.dart';
import '../Widgets/MainActivityWidgets.dart';
import '../Widgets/RegisterCard.dart';
import '../Forms/addReferral.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  final notificationButton = new PopupMenuButton<int>(
    onSelected: (int i) {},
    itemBuilder: (BuildContext ctx) {},
    child: new Icon(
      Icons.notifications,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
       backgroundColor: Color(0xffe37528),
       title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: Image.asset(
                 'assets/dms.png',
                  fit: BoxFit.contain,
                  height: 40.0,
                ),
                )
              ]
        ),

       actions: <Widget>[
         notificationButton
       ],
        
        
      ),
      drawer: Drawer(child: NavDrawer(),),

      body: Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.fill
          )
        ),
        child: Container(
          child: Column(
            children: <Widget>[
            // new Column(
            //   children: <Widget>[
            //   SizedBox(height: 32.0,),
            //   Stack(
            //     children: <Widget>[
            //       Positioned(
            //         // bottom: 0.0,
            //         child: Center(
            //         child: MainActivityBody(),
            //   ),
            //   )
            //     ],
            //   ),
              
            // ],),
            
            MainActivityBody(),

         

            Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      height: 192,
                      child: Column(
                        children: <Widget>[
                          new Container(
                            alignment: FractionalOffset.topRight,
                            margin: EdgeInsets.all(16),
                            child: FloatingActionButton(
                              onPressed: () { Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => AddReferral()
                                  )); 
                                },
                              child: Icon(Icons.add),
                              backgroundColor: Color(0xffe37528),
                            ),
                          ),
                          const SizedBox(
                            width: double.infinity,
                            height: 54.0,
                            child: const DecoratedBox(
                              decoration:
                                  const BoxDecoration(color: Color(0xfffd34f)),
                            ),
                          ),
                          const SizedBox(
                            width: double.infinity,
                            height: 50.0,
                            child: const DecoratedBox(
                              decoration:
                                  const BoxDecoration(color: Color(0xffe37528)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          


          ],),
        ),

        // child: Column(children: <Widget>[
        //     new Stack(
        //       children: <Widget>[
        //         new Positioned(
        //           child: new Align(
        //             alignment: FractionalOffset.bottomCenter,
        //             child: Text("Hello"),
        //           ),
        //         )
        //       ],
        //     )
        // ],)

      ),

    );
  }
}