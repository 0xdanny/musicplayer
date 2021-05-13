import 'package:flutter/material.dart';

import 'components/discover_block.dart'; 
import 'components/header_block.dart';
import 'components/song_tab_row.dart';
import 'components/topbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              TopBar(),
              const SizedBox(height: 20),
              HeaderBlock(),
              const SizedBox(height: 20),
              SongTabRow(),
              const SizedBox(height: 20),
              DiscoverBlock(),
            ],
          ),
        ),
      ),
    );
  }
}
