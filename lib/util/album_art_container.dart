import 'package:dribble_music_player_ui/util/colors.dart';
import 'package:flutter/material.dart';

class AlbumArt extends StatelessWidget {
  const AlbumArt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/236x/a2/b9/55/a2b955c4acb012d1f6ec39277727b9b9.jpg'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Album Title',
                style: TextStyle(fontWeight: FontWeight.bold, color: white),
              ),
              Text(
                'Number of songs',
                style: TextStyle(color: white),
              ),
            ]),
      ),
    );
  }
}
