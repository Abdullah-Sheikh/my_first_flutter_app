import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  List<BottomNavigationBarItem> _items;

  String _value = "Hello World";
  String Value = '';
  bool _value1 = false ;
  bool _value2 = false;
  double value3 = 0;

  int index =0;

  @override
  void initState() {

    _items = new List();
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.people),title:new Text('People')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.people), title:new Text('People')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.people), title:new Text('People')));


  }



  void setvalue (double value)
  {
    setState(() {
      value3 = value;
    });
  }

  void _onchanged1(bool value)
  {
    setState(() {
      _value1 = value;
    });
  }

  void _onchanged2(bool value)
  {
    setState(() {
      _value2 = value;
    });
  }


  void _onChange(String value)
  {
    setState(() => _value = 'Change : ${value}');
  }

  void _onSubmit(String value)
  {
    setState(() => _value = 'Submit : ${value}');
  }

  void onPressed(String value )
  {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My First App'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Value : ${Value}')  ,

           new Slider(value: value3, onChanged: setvalue)

           /*
           new Text('Value : ${(value3 *100).round()}')  ,
           new Switch(value: _value1, onChanged: _onchanged1),
           new SwitchListTile(
               value: _value2,
               onChanged: _onchanged2,
               title: new Text("Hello World ", style: new TextStyle(fontWeight: FontWeight.bold),),
           )

            */


           /*
           new TextField(
             decoration: new InputDecoration(
               labelText: 'hello',
               hintText: 'Hello',
               icon: new Icon(Icons.people)
             ),
             autocorrect: true,
             autofocus: true,
             keyboardType: TextInputType.text,
             onChanged: _onChange,
             onSubmitted: _onSubmit,
           )
           new Text(_value),
            new RaisedButton(onPressed: () =>  onPressed("Hello Abdullah"),child: new Text("Click me"),),
            new FlatButton(onPressed: () =>  onPressed("Hello Abdullah"),child: new Text("Click me"),),
            new IconButton(icon:new Icon(Icons.add) ,onPressed: () =>  onPressed("Hello Abdullah"),)
            */

          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: _items,
        fixedColor: Colors.blue,
        currentIndex: 0,
        onTap: (int item)
        {
          setState(() {
            index = item ;
            Value="Current value is: ${index.toString()}";


          });
        },
      ),
    );
  }
}