import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless & Stateful',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless & Stateful'),
        ),
        body: BackgroundPage(),
      ),
    );
  }
}

class BackgroundPage extends StatefulWidget {
  @override
  _BackgroundPageState createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State < BackgroundPage > {    
        // State<BackgroundPage> created class with state which extends state of type BackgroundPage    
        Color backgroundColor = Colors.green;    
        @override    
        Widget build(BuildContext context) {    
            return Container(decoration: BoxDecoration(color: backgroundColor), height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: < Widget > [    
                    ElevatedButton(child: Text('Change Color'), onPressed: () {    
                        setState(() { // any state change must be included between setState() otherwise state value changed but not reflect in UI. each time setState() called build() method called again but only changes the UI which would be required for state value changes. like in our example it regenerates only background color nothing else.    
                            if (backgroundColor == Colors.green) backgroundColor = Colors.red;    
                            else backgroundColor = Colors.green;    
                        });    
                    }, )], ), );    
            }   }