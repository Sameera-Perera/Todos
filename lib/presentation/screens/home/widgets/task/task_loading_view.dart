import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TaskLoadingView extends StatelessWidget {
  const TaskLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 7,
      itemBuilder: (context, index) => Shimmer.fromColors(
        highlightColor: Colors.white,
        baseColor: Colors.grey.shade300,
        child: ListTile(
          title: Container(
            color: Colors.grey,
            height: 20,
          ),
          leading: CircleAvatar(
            radius: 24.0,
            backgroundColor: Colors.grey,
            child: ClipRRect(
              child: Padding(
                  padding: const EdgeInsets.all(8.0), child: Container()),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          trailing: SizedBox(
            height: 20,
            width: 20,
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
