import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xffc67d0f).withOpacity(0.1),
            child: Image.asset('assets/images/avatar.png'),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff9570ff).withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
        ],
      ),
    );
  }
}
