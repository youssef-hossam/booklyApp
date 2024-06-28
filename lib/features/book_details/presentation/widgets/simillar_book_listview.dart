import 'package:bookly_app/core/utils/custom_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/simillar_books_cubit/simillar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/errMessage_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimiallarListView extends StatelessWidget {
  const SimiallarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillarBooksCubit, SimillarBooksState>(
      builder: (context, state) {
        if (state is SimillarBooksSuccess) {
          return Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: AspectRatio(
                aspectRatio: 2.2 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: CachedNetworkImageProvider(state
                            .books[index].volumeInfo!.imageLinks!.thumbnail!)),
                  ),
                ),
              ),
            ),
          ));
        } else if (state is SimillarBooksFailure) {
          return ErrMessageWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
