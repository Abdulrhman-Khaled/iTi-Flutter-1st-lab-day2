import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_day_two_lab_one/rooms.dart';

class RoomItem extends StatelessWidget {
  Rooms roomItem;

  RoomItem(this.roomItem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(roomItem.rooms),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image(image: NetworkImage(roomItem.roomsPhoto))),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
                "You can book this room now, this is " + roomItem.roomsDetails),
          ),
        ],
      ),
    );
  }
}
