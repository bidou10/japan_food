import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:japan_food/restaurant_appBar.dart';
import 'package:japan_food/restaurant_info.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          restaurant_appBar(),
          restaurant_Infos(),
        ],
      ),
    );
  }
}
