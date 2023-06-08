import 'package:flutter/material.dart';

import '../../../constant.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard({
    super.key,
    required this.title,
    required this.image,
    required this.deliveryTime,
    required this.rating,
    required this.press,
    required this.location,
  });

  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.30,
              child: Image.asset(
                image,
              ),
            ),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              location,
              maxLines: 1,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: DefaultTextStyle(
                style: TextStyle(color: Colors.black, fontSize: 12),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding / 2,
                          vertical: kDefaultPadding / 8),
                      decoration: BoxDecoration(
                        color: kGreenColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        rating.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text("$deliveryTime min"),
                    Spacer(),
                    CircleAvatar(
                      radius: 2,
                      backgroundColor: Color(0xFF868686),
                    ),
                    Spacer(),
                    Text("Free Delivery"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
