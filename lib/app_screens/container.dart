// Difference between margin and padding is that margin means distance between two widgets and padding
// means distance from the own widget.

// Row is used to arrange the widget horizontally
// Column is used to arrange the widger vertically
// Expanded widget is like wrap content in android studio means it force the widget to take available space

import 'package:flutter/material.dart';

class HomeContain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey,
        // width: 200.0,
        // height: 100.0,
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Spice Jet ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  child: Text(
                    "From Mumbai to Banglore ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Spice Jet ",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          color: Colors.white,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Mumbai to Banglore ",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          color: Colors.white,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            FlightImage(),
            FlightBookButton()
          ],
        ),
      ),
    );
  }
}

class FlightImage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(image: assetImage, width: 200.0, height: 200.0);
    return Container(child: image);

  }
}


class FlightBookButton extends StatelessWidget
{
  @override
  Widget build (BuildContext context)
  {
    return Container(
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        elevation: 10.0,
        child: Text(
          "Book ur Ticket",
          style: TextStyle(color: Colors.white,
          fontSize: 20.0,fontFamily: 'Raleway',fontWeight: FontWeight.w700),
        ), 
        onPressed: () => bookFlight(context)
      ),
    );
  }

  void bookFlight(BuildContext context)
  {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a nice journey")
    );

    showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialog;
      }
      );
  }
}
