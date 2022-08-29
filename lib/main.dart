import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_day_two_lab_one/rooms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Rooms> room = [
    new Rooms('single room', 'a room for one person',  'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg'),
    new Rooms('double room', 'a room for two person',  'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg'),
    new Rooms('vip room', 'a room for vip person',  'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg'),
    new Rooms('extra room', 'a room for extra person',  'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg'),
    new Rooms('king room', 'a room for king person',  'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg'),
    new Rooms('family room', 'a room for family',  'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg')
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room List'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Card(
              elevation: 5.0,
              color: Colors.white,
              child: Container(
                height: 180,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(room[index].roomsPhoto, height: 80),
                          Text(
                            room[index].rooms,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          ),
                          const Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    Text(
                      room[index].roomsDetails,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              color: Colors.white,
              child: Container(
                height: 180,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(room[index + 1].roomsPhoto, height: 80, width: 140),
                          Text(
                            room[index + 1].rooms,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          ),
                          const Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    Text(
                      room[index + 1].roomsDetails,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    if (index < 3)
                      index = index + 2;
                    else
                      index = 0;
                  });
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 14.0, color: Colors.deepPurple),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


