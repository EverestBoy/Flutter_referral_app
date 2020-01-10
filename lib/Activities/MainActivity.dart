import 'package:flutter/material.dart';
import 'package:hello_world/Forms/addReferral.dart';
import '../Widgets/NavDrawer.dart';
import '../Widgets/MainActivityWidgets.dart';
import 'package:flutter/services.dart';

class MainActivity extends StatefulWidget {
  
  @override
  _MainActivityState createState() => _MainActivityState();
  
}

class _MainActivityState extends State<MainActivity> {

  String name;
  String email;
  String image;
  String phone;

   @override
    void initState() {
      // print("Initialized");
      this.name = "Sunita Karki";
      this.image = "https://static.makeuseof.com/wp-content/uploads/2015/11/perfect-profile-picture-all-about-face.jpg";
      super.initState();
    }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final notificationButton = new PopupMenuButton<int>(
    onSelected: (int i) {},
    itemBuilder: (BuildContext ctx) {},
    child: new Icon(
      Icons.notifications,
    ),
  );
  
  @override
  Widget build(BuildContext context) {

    

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
 
       statusBarColor: Color(0xFFe36b17),
       
    ));

    double height = MediaQuery.of(context).size.height;
    print("height is "+height.toString());
    double bottomHeightTopMargin = height-24-60;

    
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      drawer: Drawer(child: NavDrawer(name,image),),
      body: Builder(builder: (context) =>
      
      SafeArea(
        child: Container(

        decoration: new BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.fill
          )
        ),
        child: Container(

          child: Stack(
            children: <Widget>[
              
              Container(
                color: Color(0xffe37528),
                height: 56.5,
                width: double.infinity,
                child: Stack(
                  children: <Widget>[
                    Container(alignment: FractionalOffset.centerLeft,
                      width: 60,
                      height: 60,
                      child:  GestureDetector(
                                onTap: (){
                                  Scaffold.of(context).openDrawer();
                                  // print("Drawer is "+Scaffold.of(context).isDrawerOpen().toString());
                                },
                                child: new Container(
                                  width: 60,
                                  height: 60,
                                  color: Color(0xffe37528),
                                  alignment: FractionalOffset.centerLeft,
                                  padding: new EdgeInsets.fromLTRB(16, 16, 16, 0),
                                  child: new Column(
                                      children: [
                                        new Icon(Icons.menu, color: Colors.white,),
                                      ]
                                  ),
                                )
                            ) 
                    ),
                    Center(child: SizedBox(child: Image.asset("assets/dms.png") , height: 35,)),
                    Container(alignment: FractionalOffset.centerRight,
                      child:  GestureDetector(
                                onTap: (){
                                  print("Container clicked");
                                },
                                child: new Container(
                                  alignment: FractionalOffset.centerRight,
                                  padding: new EdgeInsets.fromLTRB(0, 16, 16, 0),
                                  child: new Column(
                                      children: [
                                        new Icon(Icons.notifications, color: Colors.white,),
                                      ]
                                  ),
                                )
                            ) 
                    )
                  ],
                  
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Container(
                  height: height-144,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 64),
                  child: Center(
                    child: SingleChildScrollView(
                      child: MainActivityBody(),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, bottomHeightTopMargin, 0 , 0),
                width: double.infinity,
                height: 60,
                alignment: FractionalOffset.bottomCenter,
                color: Color(0xffe37528),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, bottomHeightTopMargin-60, 0 , 55),
                width: double.infinity,
                height: 60,
                alignment: FractionalOffset.bottomCenter,
                color: Colors.black,
              ),

              Container(
                alignment: FractionalOffset.topRight,
                margin: EdgeInsets.fromLTRB(0, bottomHeightTopMargin-130, 16, 0),
                child: FloatingActionButton(
                  onPressed: () {
                    // Add your onPressed code here!
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => AddReferral()
                    ));
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Color(0xffe37528),
                            ),
              )
            ],
          ),
          
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

      ),)

    ));
  }
}

