import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PaymentsView();
  }
}

class PaymentsView extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // resizeToAvoidBottomPadding: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.transparent,
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
        ],
        /*
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            iconSize: 32,
            color: Colors.grey[200],
            onPressed: () {},
          ),
        ],
        */
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
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                buildListItem(context),
                buildListItem(context),
                buildListItem(context),
                buildListItem(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildListItem(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          colors: [
            //Colors.black,
            //Colors.black,
            // Colors.blueGrey[700],
            Colors.blueGrey[300],
            Colors.blueGrey[100]
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color:  Colors.purple,
              border: Border.all(color: Colors.white, width: 3),
            ),
            child: Icon(
              Icons.format_paint,
              size: 55,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Text(
                  "Title",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Text(
                      "coctails",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "drinks",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
