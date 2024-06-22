import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomSerachTextField(),
          SizedBox(
            height: 16.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Search Results",
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          SearchResultListView()
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: BestSellerListView());
  }
}
