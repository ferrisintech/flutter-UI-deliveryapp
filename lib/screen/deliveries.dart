import 'package:flutter/material.dart';

class Deliveries extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DeliveriesView();
  }
}

class DeliveriesView extends State<Deliveries> {
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
        leading: IconButton(
          icon: Icon(Icons.filter_list),
          iconSize: 32,
          color: Colors.grey[200],
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.delivery_dining),
            iconSize: 32,
            color: Colors.grey[200],
            onPressed: () {},
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
            // child:
          ),
        ],
      ),
    );
  }
}
