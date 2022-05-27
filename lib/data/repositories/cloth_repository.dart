import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryRepository {
  final List<Category> categories = <Category>[
    Category(
      id: 1,
      icon: 'assets/book.svg',
      description:
          "The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English",
      color: const Color(0xff00D1AD),
    ),
    Category(
      id: 2,
      icon: 'assets/notebook.svg',
      description:
          "The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English",
      color: const Color(0xffFF3F85),
    ),
    Category(
      id: 3,
      icon: 'assets/website.svg',
      description:
          "The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English",
      color: const Color(0xffFFB700),
    )
  ];
}
