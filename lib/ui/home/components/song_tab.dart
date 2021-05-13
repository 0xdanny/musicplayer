import 'package:flutter/material.dart';

class SongTab extends StatelessWidget {
  const SongTab({
    Key? key,
    required this.color,
    required this.avatar,
    required this.artist,
    required this.songTitle,
  }) : super(key: key);

  final Color color;
  final String avatar;
  final String artist;
  final String songTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 65,
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Image.asset(avatar),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                artist,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  Image.asset('assets/icons/song_tiny_icon.png'),
                  const SizedBox(width: 2),
                  Text(songTitle),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
