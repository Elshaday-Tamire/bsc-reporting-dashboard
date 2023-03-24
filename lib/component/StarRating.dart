import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final double size;
  final Color color;
  final Color borderColor;

  const StarRating({
    Key key,
    this.rating,
    this.size = 10,
    this.color = Colors.yellow,
    this.borderColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
        (index) {
          return Icon(
            index < rating.floor() ? Icons.star : Icons.star_border,
            size: size,
            color: index < rating.floor() ? color : borderColor,
          );
        },
      ),
    );
  }
}
