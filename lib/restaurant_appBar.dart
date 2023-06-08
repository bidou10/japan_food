import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class restaurant_appBar extends StatelessWidget {
  const restaurant_appBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          "assets/dish/sushi-makis.jpeg",
          fit: BoxFit.cover,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset("assets/icons/back.svg"),
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset(
            "assets/icons/share.svg",
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              "assets/icons/loupe.svg",
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
