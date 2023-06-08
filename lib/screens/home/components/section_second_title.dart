import 'package:flutter/material.dart';

import '../../../constant.dart';

class Section_Second_Title extends StatelessWidget {
  const Section_Second_Title({
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
        Text("Best Pick", style: Theme.of(context).textTheme.headlineSmall),
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
