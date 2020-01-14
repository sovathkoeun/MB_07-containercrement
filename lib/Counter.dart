import 'package:flutter/material.dart';


class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  Image  _image;
  void add() {
    setState(() {
     _counter++; 
     switch(_counter) {
       case 5:
           _image = Image.network("https://cdn.pixabay.com/photo/2018/10/30/16/06/water-lily-3784022__340.jpg",
            fit: BoxFit.cover,
            width: 500.0,
            height: 200.0,
           );
            break;
       case 8:
           _image = Image.network("https://www.almanac.com/sites/default/files/styles/primary_image_in_article/public/image_nodes/flower-bouquet-edit.jpg?itok=gOLk5la7",
            fit: BoxFit.cover,
            width: 500.0,
            height: 200.0,
           );
            break;
       case 11:
           _image = Image.network("https://previews.123rf.com/images/yarruta/yarruta1502/yarruta150200045/36495799-happy-children-with-bouquet-of-flowers-boy-and-girl-against-green-background-spring-family-holiday-c.jpg",
            fit: BoxFit.cover,
            width: 500.0,
            height: 200.0,
           );
            break;
       case 15:
           _image = Image.network("https://ak6.picdn.net/shutterstock/videos/1253206/thumb/1.jpg",
            fit: BoxFit.cover,
            width: 500.0,
            height: 200.0,
           );
            break;
       case 18:
           _image = Image.network("https://ak8.picdn.net/shutterstock/videos/3383468/thumb/4.jpg?i10c=img.resize(height:240)",
            fit: BoxFit.cover,
            width: 500.0,
            height: 200.0,
           );
            break;
        default:
            _image = Image.network("Cannot");
            break;
     }
    });
  }
  void remove() {
    setState(() {
     _counter--; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(  
            margin: EdgeInsets.only(bottom: 20.0),
            child: _image,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
          ),
          Text(
            "$_counter",
            style: TextStyle(fontSize: 50.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () => add(),
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () =>remove(),
                child: Icon(Icons.remove),
                backgroundColor: Colors.red,
              )
            ],
          )
        ],
      ),
    );
  }
}
