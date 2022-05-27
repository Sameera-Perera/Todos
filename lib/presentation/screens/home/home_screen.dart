import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'widgets/bottom_panel.dart';
import 'widgets/category/category_view.dart';
import 'widgets/header.dart';
import 'widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SlidingUpPanel(
          renderPanelSheet: false,
          panel: const BottomPanel(),
          maxHeight: 550,
          minHeight: 310,
          body: Column(
            children: const [
              Header(),
              SearchBar(),
              Expanded(child: CategoryView())
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 55,
        child: ElevatedButton(
          onPressed: () {},
          child: const Icon(Icons.add, color: Colors.white),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(16),
              primary: const Color(0xff9E3AD3)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
