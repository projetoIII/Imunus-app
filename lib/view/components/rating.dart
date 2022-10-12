import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:imunus/view/shared/colors.dart';
import 'package:imunus/view/states/rating_provider.dart';
import 'package:provider/provider.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  RatingProvider? _provider;

  @override
  Widget build(BuildContext context) {
    _provider ??= Provider.of<RatingProvider>(context);

    return RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: AppColors.blue,
            ),
        onRatingUpdate: (rating) {
          _provider!.setRating(rating);
        });
  }
}
