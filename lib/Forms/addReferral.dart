import 'package:flutter/material.dart';
class AddReferral extends StatefulWidget {
  @override
  _AddReferralState createState() => _AddReferralState();
}

class _AddReferralState extends State<AddReferral> {
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();

    super.dispose();
  }
  String _value = 'Select';

   DropdownButton _normalDown() => DropdownButton<String>(
        items: [
          DropdownMenuItem(
            value: "1",
            child: Text(
              "Select",
            ),
          ),
          DropdownMenuItem(
            value: "2",
            child: Text(
              "First",
            ),
          ),
          DropdownMenuItem(
            value: "2",
            child: Text(
              "Second",
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        value: _value,
      );
  
  TextStyle textStyle = new TextStyle(fontSize: 18.0, fontFamily: 'Roboto', color: Colors.black);
  
  // Drop down button 
  List<String> _Courses = ['Machine Learning Foundation', 'Certified Data Scientist'];
  String _selectedCourse;

  @override
  Widget build(BuildContext context) {



    final Card nameCard = Card(
              child: Container(
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "Friend's Name:",
                    labelText: "Name:",
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange))
                  ),
                ),
              )
            );
    final Card emailCard = Card(
              child: Container(
                child: TextFormField(
                  focusNode: myFocusNode,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: "Friend's Email:",
                    labelText: "Email:",
                    focusColor: Colors.orange,
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange))
                  ),
                ),
              )
            );
    final Card phoneCard = Card(
              child: Container(
                child: TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Color(0xffe37528),
                    focusColor: Color(0xffe37528),
                    hoverColor: Color(0xffe37528),
                    icon: Icon(Icons.phone),
                    hintText: "Friend's Phone:",
                    labelText: "Phone:",
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange))
                  ),
                ),
              )
            );

    final DropdowdnCard = Card(
      child: Container(
        height: 58.0,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: DropdownButton(
              hint: Text('Please choose a course'), // Not necessary for Option 1
              value: _selectedCourse,
              onChanged: (newValue) {
                setState(() {
                  _selectedCourse = newValue;
                });
              },
              items: _Courses.map((location) {
                return DropdownMenuItem(
                  child: new Text(location),
                  value: location,
                );
              }).toList(),
            ),
      ),
    );

    final referBtn = Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xffe37528),
              child: MaterialButton(
                minWidth: 150.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                },
                child: Text("Refer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18.0)),
              ),
            );



    return Scaffold(
      appBar: AppBar(
        title: Text("Refer your friend"),
        backgroundColor: Color(0xffe37528),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Refer and earn.", style: textStyle,),
            SizedBox(height: 16,),
            nameCard,
            SizedBox(height: 16,),
            phoneCard,
            SizedBox(height: 16,),
            emailCard,
            SizedBox(height: 16,),
            Align(
              alignment: FractionalOffset.center,
              child: DropdowdnCard,
            ),
            SizedBox(height: 16,),
            new Align(
              alignment: FractionalOffset.centerRight,
              child: referBtn,
            )
            
            
            
        ],),
      ),
    );
  }
}