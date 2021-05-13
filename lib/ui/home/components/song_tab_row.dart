import 'package:flutter/material.dart';
import 'package:musicplayer/ui/home/components/song_tab.dart';

class SongTabRow extends StatelessWidget {
  const SongTabRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var songs = [
      SongTab(
        color: Color(0xff9570ff).withOpacity(0.1),
        avatar: 'assets/images/avatar.png',
        artist: 'Ayesha Ruhin',
        songTitle: 'Some Feeling',
      ),
      SongTab(
        color: Color(0xff9570ff).withOpacity(0.1),
        avatar: 'assets/images/avatar.png',
        artist: 'Jane Cooper',
        songTitle: 'I Didn\'t Know',
      ),
      SongTab(
        color: Color(0xff9570ff).withOpacity(0.1),
        avatar: 'assets/images/avatar.png',
        artist: 'Mico Rodeo',
        songTitle: 'Rebase',
      ),
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var song in songs) song,
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
