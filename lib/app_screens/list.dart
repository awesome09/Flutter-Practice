import 'package:flutter/material.dart';


/* The below list is useful for small data and we cannot make every item clickable in the list
class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Hello List"),
          onTap: () => debugPrint("Clicked"),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Hello List"),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Hello List"),
        ),
        Text("Yet another list")
      ],
    );
  }
}*/

// To overcome the above problem we will use listview builder for larger data that contains three steps 
// 1. prepare the data source like List<String>
// 2 . convert the data into widgets
// 3. use that widgets as a children of list view

class HomeList extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
     var listItems = getListItems();
    return ListView.builder(
      itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text(listItems[index]),
          onTap: () => showSnackbar(context,listItems[index]),
        );
      },
    );
  }

  List<String> getListItems()
  {
    var items = List<String>.generate(1000, (counter) => "items $counter");
    return items;
  }

  void showSnackbar(BuildContext context,String item)
  {
    var snack = SnackBar(
      content: Text("You Clicked $item"),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: () => debugPrint("Nooo"),
      ),
    );

    Scaffold.of(context).showSnackBar(snack);
  }
}


