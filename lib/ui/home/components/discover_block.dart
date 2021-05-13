import 'package:flutter/material.dart';

import 'discover_item.dart';

class DiscoverBlock extends StatelessWidget {
  const DiscoverBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = [
      DiscoverItem(
        image: 'assets/images/song_image_1.png',
        title: 'Out Of My Mind',
        category: 'Dance',
      ),
      DiscoverItem(
        image: 'assets/images/song_image_2.png',
        title: 'Freak In Me',
        category: 'Electronic',
      ),
      DiscoverItem(
        image: 'assets/images/song_image_1.png',
        title: 'Pacify',
        category: 'R&B',
      ),
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var item in items) item,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
