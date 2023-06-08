import 'package:flutter/material.dart';

import '../../../constant.dart';

class Section_Title extends StatelessWidget {
  const Section_Title({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Partners Offers",
            style: Theme.of(context).textTheme.headlineSmall),
        TextButton(
          onPressed: press,
          style: TextButton.styleFrom(primary: kRedColor),
          child: Text(
            "See all",
          ),
        )
      ],
    );
  }
}
