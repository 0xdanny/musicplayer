import 'package:flutter/material.dart';

class DiscoverItem extends StatelessWidget {
  const DiscoverItem({
    Key? key,
    required this.image,
    required this.title,
    required this.category,
  }) : super(key: key);

  final String image;
  final String title;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            height: 50,
            width: 140,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 5, 8, 0),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.3),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      category,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
