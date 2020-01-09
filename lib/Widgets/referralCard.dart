import 'package:flutter/material.dart';

class ReferralCard extends StatefulWidget {
  String _referName;
  String _referPhone;
  String _referMail;
  @override
  _ReferralCardState createState() => _ReferralCardState();
  ReferralCard(String _referName){
    this._referName = _referName;
    // this._referPhone = _referPhone;
    // this._referMail = _referMail;
  }
}

class _ReferralCardState extends State<ReferralCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 18, 0),
      width: MediaQuery.of(context).size.width,
      child: Card(

        child: Container(
          padding: EdgeInsets.all(16),
          alignment: FractionalOffset.centerLeft,
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Icon(Icons.person),
                SizedBox(width: 8,),
                Text(widget._referName)
              ],),
              SizedBox(height: 8,),
              Row(children: <Widget>[
                Icon(Icons.email),
                SizedBox(width: 8,),
                Text(widget._referName)
              ],),
              SizedBox(height: 8,),
              Row(children: <Widget>[
                Icon(Icons.phone),
                SizedBox(width: 8,),
                Text(widget._referName)
              ],)
            ],
          )
        ),
      ),
    );
  }
}