import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, this.physics});
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: physics,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const BestSellerListViewItem();
        });
  }
}
