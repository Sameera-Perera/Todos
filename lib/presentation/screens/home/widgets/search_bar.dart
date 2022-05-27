import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(38.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 8, right: 16, top: 4, bottom: 4),
          child: TextField(
            onChanged: (String txt) {},
            style: const TextStyle(
              fontSize: 18,
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                prefixIcon: Icon(Icons.search)
            ),
          ),
        ),
      ),
    );
  }
}
