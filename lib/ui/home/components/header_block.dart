import 'package:flutter/material.dart';

class HeaderBlock extends StatelessWidget {
  const HeaderBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Find the best\nmusic for you',
            style: TextStyle(
              color: Color(0xff333333),
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Image(
          image: AssetImage('assets/images/point_right.png'),
        ),
      ],
    );
  }
}
