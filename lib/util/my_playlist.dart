import 'package:flutter/material.dart';

import 'colors.dart';

class MyPlaylist extends StatelessWidget {
  const MyPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: lightDarkGreen, borderRadius: BorderRadius.circular(60)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.amber.shade300,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: dark, width: 3)),
                  child: const Icon(Icons.pause)),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Artist - Title',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: white),
                      ),
                      SizedBox(width: 100),
                      Text(
                        '2.36',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Song Lyrics...sonnnnnnnnnngggg',
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
