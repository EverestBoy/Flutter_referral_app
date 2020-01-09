import 'package:flutter/material.dart';
import '../../Widgets/referralCard.dart';

class AllReferrals extends StatefulWidget {
  @override
  _AllReferralsState createState() => _AllReferralsState();
}



class _AllReferralsState extends State<AllReferrals> {
  TextStyle textStyle = new TextStyle(fontSize: 16.0);
  @override
  Widget build(BuildContext context) {
    final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria', 
        'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
        'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
        'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
        'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
        'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
        'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
        'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 
        'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text("Referrals"),
          backgroundColor: Color(0xffe37528),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: europeanCountries.length,
            itemBuilder: (context, index) {
              return ReferralCard(europeanCountries[index]);
              // return ListTile(
              //   // title: Text(europeanCountries[index]),
              //   // ReferralCard(europeanCountries[index]),
              // );
            },
          ),
        ),
      ),
    );
  }
}