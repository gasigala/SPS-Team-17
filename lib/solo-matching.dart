import 'package:flutter/material.dart';
import 'package:sps_team17/data/dummy-restaurants.dart';
import 'package:sps_team17/data/restaurant.dart';
import 'package:sps_team17/restaurant-card.dart';

class SoloMatch extends StatefulWidget {
  @override
  _SoloMatchState createState() => _SoloMatchState();
}

class _SoloMatchState extends State<SoloMatch> {
  final List<Restaurant> restaurants = dummyPlaces;

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              restaurants.isEmpty
                  ? Text('No more users')
                  : Stack(children: restaurants.map(buildRestaurant).toList()),
              Expanded(child: Container()),
              // add bottom buttons widget
            ],
          )));

  /**
   * Create restaurant objects
   */
  Widget buildRestaurant(Restaurant restaurant) {
    final restaurantIndex = restaurants.indexOf(restaurant);
    final isRestaurantInFocus = restaurantIndex == restaurants.length - 1;

    return Draggable(
        child: RestaurantCardWidget(
            restaurant: restaurant, isRestaurantInFocus: isRestaurantInFocus),
        feedback: Material(
          type: MaterialType.transparency,
          child: RestaurantCardWidget(
              restaurant: restaurant, isRestaurantInFocus: isRestaurantInFocus),
        ),
        childWhenDragging: Container(),
        onDragEnd: (details) => onDragEnd(details, restaurant));
  }

  /**
   * Swiping logic
   */
  void onDragEnd(DraggableDetails details, Restaurant restaurant) {
    final minimumDrag = 100;
    if (details.offset.dx > minimumDrag) {
      restaurant.isSwipedOff = true;
    } else if (details.offset.dx < -minimumDrag) {
      restaurant.isLiked = true;
    }

    setState(() => restaurants.remove(restaurant));
  }
}
