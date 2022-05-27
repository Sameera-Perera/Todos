import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(2), // Border width
            decoration:
                const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(26), // Image radius
                child: Image.network(
                    'https://thumbs.dreamstime.com/b/portrait-normal-boy-attractive-young-man-studio-looking-camera-30450104.jpg',
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hi,',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Peter John',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Spacer(),
          const FaIcon(
            FontAwesomeIcons.ellipsisVertical,
            size: 35,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
