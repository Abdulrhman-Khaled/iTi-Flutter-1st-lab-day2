import 'package:flutter/material.dart';
import 'package:iti_day_two_lab_one/room_item.dart';
import 'package:iti_day_two_lab_one/rooms.dart';

class RoomListStatefulWidget extends StatefulWidget {
  const RoomListStatefulWidget({Key? key}) : super(key: key);

  @override
  State<RoomListStatefulWidget> createState() => RoomList();
}

class RoomList extends State<RoomListStatefulWidget> {
  List<Rooms> room = [
    Rooms('single room', 'a room for one person',
        'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg'),
    Rooms('double room', 'a room for two person',
        'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg'),
    Rooms('vip room', 'a room for vip person',
        'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg'),
    Rooms('extra room', 'a room for extra person',
        'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg'),
    Rooms('king room', 'a room for king person',
        'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg'),
    Rooms('family room', 'a room for family',
        'https://www.steigenberger.com/cache/images/SHR_Pyramids_rooms_D_5305a036d3b62425e57adff-1-1-1-2-1.jpg')
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Room List'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: room.map((i) => InkWell(
            splashColor: Colors.deepPurpleAccent,
            onTap: () {
              Rooms roomItem = i;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RoomItem(roomItem)));
            },
            child: Card(
              elevation: 5.0,
              color: Colors.white,
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(i.roomsPhoto, height: 80),
                          Text(
                           i.rooms,
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
                      i.roomsDetails,
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
          ),).toList()


        ),
      ),
    );
  }
}
