import 'package:flutter/material.dart';
import 'package:todos/data/repositories/cloth_repository.dart';
import 'package:todos/presentation/screens/home/widgets/category/category_card.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Category',
            style: TextStyle(color: Colors.white,
              fontSize: 22
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 160,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: CategoryRepository().categories.length,
                itemBuilder: (context, index) => CategoryCard(
                  category: CategoryRepository().categories[index],
                )
            ),
          )
        ],
      ),
    );
  }
}
