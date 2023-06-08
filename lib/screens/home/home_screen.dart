import 'package:flutter/material.dart';
import 'package:japan_food/constant.dart';
import 'package:japan_food/demoData.dart';
import 'package:japan_food/screens/home/components/section_second_title.dart';

import '../../demoDeuxiemeData.dart';
import 'components/image_carousel.dart';
import 'components/restaurant_info_medium_card.dart';
import 'components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // using customScrollView is the best scrollView
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white70,
            elevation: 0,
            floating: true,
            title: Column(
              children: [
                Text(
                  "Delivery to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: kRedColor),
                ),
                Text(
                  "Japan Food",
                  style: TextStyle(color: kBlackColor),
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text("Filter", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(kDefaultPadding),
            sliver: SliverToBoxAdapter(
              child: Section_Title(
                title: "Partners Offers",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: kDefaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoMediumCardData[index]["name"],
                      location: demoMediumCardData[index]["location"],
                      image: demoMediumCardData[index]["image"],
                      deliveryTime: demoMediumCardData[index]["deliveryTime"],
                      rating: demoMediumCardData[index]["rating"],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(kDefaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset("assets/icons/free-delivery.jpg"),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(kDefaultPadding),
            sliver: SliverToBoxAdapter(
              child: Section_Second_Title(
                title: "Best Pick",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoSecondMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: kDefaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoSecondMediumCardData[index]["name"],
                      location: demoSecondMediumCardData[index]["location"],
                      image: demoSecondMediumCardData[index]["image"],
                      deliveryTime: demoSecondMediumCardData[index]
                          ["deliveryTime"],
                      rating: demoSecondMediumCardData[index]["rating"],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
