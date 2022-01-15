import 'package:flutter/material.dart';

class Rides extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RidesView();
  }
}

class RidesView extends State<Rides> {
  List<String> litems = [];
  final TextEditingController fromtext = new TextEditingController();
  final TextEditingController totext = new TextEditingController();
  final TextEditingController pricetext = new TextEditingController();
  final TextEditingController durtext = new TextEditingController();

  final kBoxDecorationStyle = BoxDecoration(
    color: Colors.blue[600],
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 6.0,
        offset: Offset(0, 2),
      ),
    ],
  );

  final kHintTextStyle = TextStyle(
    color: Colors.grey[200],
    fontFamily: 'OpenSans',
    fontSize: 18,
  );

  void showOrderRideDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
            onWillPop: () {
              return null;
            },
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              contentPadding: EdgeInsets.all(10),
              content: new SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.2,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 10),
                        decoration: kBoxDecorationStyle,
                        height: 50.0,
                        child: TextField(
                          controller: fromtext,
                          /*
                          onSubmitted: (text) {
                            litems.add(text); // Append Text to the list
                            fromtext.clear(); // Clear the Text area
                            setState(() {}); // Redraw the Stateful Widget
                          },
                          */
                          keyboardType: TextInputType.streetAddress,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 19,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 10, top: 10.0),
                            hintText: 'From',
                            hintStyle: kHintTextStyle,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 20),
                        decoration: kBoxDecorationStyle,
                        height: 50.0,
                        child: TextField(
                          controller: totext,
                          /*
                          onSubmitted: (text) {
                            litems.add(text); // Append Text to the list
                            totext.clear(); // Clear the Text area
                            setState(() {}); // Redraw the Stateful Widget
                          },
                          */
                          keyboardType: TextInputType.streetAddress,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 19,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 10, top: 10.0),
                            hintText: 'To',
                            hintStyle: kHintTextStyle,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RaisedButton(
                              color: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            RaisedButton(
                              color: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  "Publish",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                // addToRideList(),
                                setState(() {
                                  print("data = " +
                                      fromtext.text +
                                      " " +
                                      totext.text);

                                  fromtext.clear();
                                  totext.clear();
                                });

                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //resizeToAvoidBottomPadding: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.filter_list),
          iconSize: 32,
          color: Colors.grey[200],
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.drive_eta),
            iconSize: 32,
            color: Colors.grey[200],
            onPressed: () {
              showOrderRideDialog(context);
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0F4C81),
                  Colors.blueGrey[500],
                  Colors.blueGrey[300],
                  Colors.blueGrey[100],
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
/*
            child: Expanded(
              child: new ListView.builder(
                  itemCount: litems.length,
                  itemBuilder: (BuildContext ctxt, int Index) {
                    return new Text(litems[Index]);
                  }),
            ),
            */
          ),
        ],
      ),
    );
  }
}
