import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Center(
          child: Text(
            'Flutter GridViewView Demo',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      
//Gridview Example
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        shrinkWrap: true, 
        scrollDirection: Axis.horizontal,
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('images/pic0.png'),
                  fit: BoxFit.fitHeight,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          );
        }),
      ), 
  ));
  }
}

    
        /* //Listview example
      body: ListView(
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        reverse: true,
        itemExtent: 100,
        scrollDirection: Axis.horizontal,
        children: const [
          
          Card(
            child: ListTile(title: Text("Item 1")),
          ),
          Card(
            child: ListTile(title: Text("Item 2")),
          ),
          Card(
            child: ListTile(title: Text("Item 3")),
          ),
        ],
       
      ),
    ));
  }
} */