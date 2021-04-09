import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sps_team17/data/dummy-restaurants.dart';
import 'package:sps_team17/data/restaurant.dart';
import 'package:sps_team17/feedback.dart';
import 'package:provider/provider.dart';

class RestaurantCardWidget extends StatelessWidget {
  final Restaurant restaurant;
  final bool isRestaurantInFocus;

  const RestaurantCardWidget({
    @required this.restaurant,
    @required this.isRestaurantInFocus,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FeedbackPositionProvider>(context);
    final swipingDirection = provider.swipingDirection;
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.7,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(restaurant.imageURL),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 0.5),
            ],
            gradient: LinearGradient(
              colors: [Colors.black12, Colors.black87],
              begin: Alignment.center,
              stops: [0.4, 1],
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                  right: 10,
                  left: 10,
                  bottom: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildRestaurantInfo(restaurant: restaurant),
                      Padding(
                        padding: EdgeInsets.only(bottom: 16, right: 8),
                        child: Icon(Icons.info, color: Colors.white),
                      )
                    ],
                  ))
            ],
          )),
    );
  }

  Widget buildRestaurantInfo({@required Restaurant restaurant}) => Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${restaurant.name}',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Reviews ${restaurant.reviews}',
            style: TextStyle(color: Colors.white),
          )
        ],
      ));

  // Widget buildLikeBadge(SwipingDirection swipingDirection) {
  //   final isSwippingRight = swipingDirection == swipingDirection.right,
  //   final color = isSwippingRight ? Colors.green : Colors.pink;
  //   final angle = isSwippingRight ? -0.5 : 0.5;

  //   if (swipingDirection == SwippingDirection.none) { return Container();
  //     return Container();
  //   }
  //   else {
  //     return Container(
  //       child: Text(
  //         isSwippingRight ? 'LIKE' : 'NOPE',
  //         style: TextStyle(
  //           color: color,
  //           fontSize: 20,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     );
  //   }
  // }
}
