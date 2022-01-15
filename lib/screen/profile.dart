import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileView();
  }
}

class ProfileView extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // resizeToAvoidBottomPadding: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.transparent,
/*
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          height: 38.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            style: TextStyle(color: Colors.yellow[700], fontSize: 17.5),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 15, right: 15),
              hintText: "Search...",
              hintStyle: TextStyle(
                color: Colors.grey[400],
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            iconSize: 32,
            color: Colors.grey[200],
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.drive_eta),
            iconSize: 32,
            color: Colors.grey[200],
            onPressed: () {},
          ),
        ],
      ),

      */
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
          ),
        ],
      ),
    );
  }
}
