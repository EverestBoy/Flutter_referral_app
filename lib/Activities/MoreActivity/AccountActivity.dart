import 'package:flutter/material.dart';

class AccountActivity extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    Color lightBlue = Color(0xffDEEBFF);
    Color darkBlue = Color(0xff003399);
    Color lightGreen = Color(0xffE2FFEE);
    Color darkGreen = Color(0xff00875A);
    Color lightRed = Color(0xffFFEBE5);
    Color darkRed = Color(0xffDE350B);

    getExpandedReferral(
      Color backColor,
      Color frontColor, 
      double leftMargin, 
      double rightMargin, 
      String status, 
      int num,){
      
      return Expanded(
        child: Container(
          padding: EdgeInsets.all(16),
          height: 100,
          margin: EdgeInsets.fromLTRB(leftMargin, 8, rightMargin, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backColor
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text(status, style: TextStyle(color: frontColor),),
              ),
              Expanded(
                child: Text(num.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Expanded(
                child: Text("Requests"),
              )
          ],),
        ),
      );
    }

    getExpanded(
      double leftMargin, 
      double rightMargin, 
      String topic, 
      String amount, 
      String footer){

      return Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    height: 100,
                    margin: EdgeInsets.fromLTRB(leftMargin, 8, rightMargin, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0x1A0B77BF),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Text(topic),
                        ),
                        Expanded(
                          child: Row(children: <Widget>[
                            SizedBox(
                              height: 18.0,
                              width: 18.0,
                              child: Image.asset("assets/icons/rupee.png"),
                            ),
                            Text(" "+amount, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),)
                          ],)
                        ),
                        Expanded(
                          child: Text(footer),
                        )
                      
                    ],),
                  ),
                );
    }


    TextStyle subHeader = new TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Account"),
        backgroundColor: Color(0xffe37528),
      ),      
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Container(
                    width: 60.0,
                    height: 60.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: FadeInImage(
                          placeholder: AssetImage("assets/test.jpeg"),
                          image: NetworkImage("https://static.makeuseof.com/wp-content/uploads/2015/11/perfect-profile-picture-all-about-face.jpg"),
                          fit: BoxFit.cover,
                  ))),
            SizedBox(height: 16.0,),
            Text("Hi Sunita,", style: new TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
            Text("Here is your account overview!", style: new TextStyle(color: Colors.grey)),
            SizedBox(height: 24.0,),
            Text("Your Earnings,", style: subHeader,),
            Row(
              children: <Widget>[
                getExpanded(0.0, 8.0, "Earnings", "20000", "till now"),
                getExpanded(8.0, 0.0, "Received", "10000", "this month")
              ],
            ),
            SizedBox(height: 16.0,),
            Text("Request Status,", style: subHeader),  
            Row(children: <Widget>[
              getExpandedReferral(lightGreen, darkGreen, 0, 8, "Approved", 20),
              getExpandedReferral(lightBlue, darkBlue, 8, 8, "Pending", 20),
              getExpandedReferral(lightRed, darkRed, 8, 0, "Rejected", 20)
            ],)


          ],),
        ),
      ),
    );
  }
}