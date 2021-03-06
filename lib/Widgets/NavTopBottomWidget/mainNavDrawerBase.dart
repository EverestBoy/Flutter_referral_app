import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Activities/ReferalActivity/AllReferrals.dart';
import '../../Activities/MoreActivity/AccountActivity.dart';

class MainNavDrawerBase extends StatefulWidget {
  @override
  _MainNavDrawerBaseState createState() => _MainNavDrawerBaseState();
}

class _MainNavDrawerBaseState extends State<MainNavDrawerBase> {

  TextStyle textStyle = new TextStyle(color: Color(0xffe37528));

  @override
  Widget build(BuildContext context) {
   
    return Container(
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_balance),
          title: Text('My Account',),
          onTap: () async {
              Navigator.pop(context);
              // await new Future.delayed(const Duration(seconds: 3));
              Navigator.push(context, CupertinoPageRoute(
                builder: (context) => AccountActivity()
              ));
            },
          ),
        Divider(),
        ListTile(
          leading: Icon(Icons.event),
          title: Text('Referrals'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, CupertinoPageRoute(
              
              builder: (context) => AllReferrals()
            ));
          },
        ),
        ListTile(
          leading: Icon(Icons.event_available),
          title: Text('Approvals'),
          onTap: () {
          },
        ),
        ListTile(
          leading: Icon(Icons.event_note),
          title: Text('Pendings'),
          onTap: () {
          },
        ),
        ListTile(
          leading: Icon(Icons.event_busy),
          title: Text('Rejected'),
          onTap: () {
          },
        ),

        Divider(),

        ListTile(
          leading: Icon(Icons.edit),
          title: Text('Edit Profile'),
          onTap: () {
          },
        ),

        ListTile(
          leading: Icon(Icons.phonelink_erase),
          title: Text('Log Out'),
          onTap: () {
          },
        ),

        Divider(),

        ListTile(
          leading: Icon(Icons.phone),
          title: Text('About Us'),
          onTap: () {
          },
        ),

        ListTile(
          leading: Icon(Icons.import_contacts),
          title: Text('Contact Us'),
          onTap: () {
          },
        ),

        

      ],),
    );
  }
}