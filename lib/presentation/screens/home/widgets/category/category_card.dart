import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../data/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        width: 140,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
              width: 35,
              child: SvgPicture.asset(
                category.icon,
                color: Colors.white,
              ),
            ),
            Text(
              category.description,
              maxLines: 5,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
            const Spacer(),
            const Icon(
              Icons.add,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
