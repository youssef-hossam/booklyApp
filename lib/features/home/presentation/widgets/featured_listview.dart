import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 1.4, maxCrossAxisExtent: 240),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/test_image.png'))),
        );
      },
    );
  }
}
