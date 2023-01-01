import 'dart:ui';

import 'package:dribble_music_player_ui/util/album_art_container.dart';
import 'package:dribble_music_player_ui/util/colors.dart';
import 'package:flutter/material.dart';

import '../util/my_playlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      // appBar: AppBar(
      //   backgroundColor: dark,
      //   toolbarHeight: 100,

      // ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // App bar
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // menu
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: lightDark,
                      ),
                      child: Icon(
                        Icons.menu,
                        color: white,
                      ),
                    ),

                    //title
                    Text(
                      'BD Music',
                      style: TextStyle(
                          fontSize: 16,
                          color: white,
                          fontWeight: FontWeight.bold),
                    ),

                    //search
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: white,
                      ),
                      child: Icon(
                        Icons.search,
                        color: dark,
                      ),
                    ),
                  ],
                ),
              ),

              // Popular playlist
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'POPULAR PLAYLIST',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Album arts
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //List
                    AlbumArt(), SizedBox(width: 10),
                    AlbumArt(), SizedBox(width: 10),
                    AlbumArt(), SizedBox(width: 10),
                    AlbumArt()
                  ],
                ),
              ),
              SizedBox(height: 20),

              // MY playlist

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MY PLAYLIST',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Playlist tiles
              SingleChildScrollView(
                child: Column(
                  children: [
                    MyPlaylist(),
                    SizedBox(height: 10),
                    MyPlaylist(),
                    SizedBox(height: 10),
                    MyPlaylist(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
