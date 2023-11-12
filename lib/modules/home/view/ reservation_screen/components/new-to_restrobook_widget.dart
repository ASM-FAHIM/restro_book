import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restro_book/core/utils/app_routes.dart';
import 'package:restro_book/core/utils/dimensions.dart';
import 'package:restro_book/core/utils/restaurant_resources.dart';
import 'package:restro_book/modules/home/view/%20reservation_screen/components/connom_title_widget.dart';
import 'package:restro_book/modules/home/view/widget/title_with_listView_widget.dart';

class NewToRestroBookingWidget extends StatelessWidget {
  const NewToRestroBookingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height300 + Dimensions.height10,
      width: Dimensions.screenWidth,
      child: Column(
        children: [
          CommonTitleWidgetWithViewAll(
            titleOfTheList: 'New To Restrobooking',
            onTap: () {
              Get.toNamed(AppRoutes.getViewAllScreen());
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: newToRestroBookingList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final restaurant = newToRestroBookingList[index];
                return TitleWithListViewWidget(
                  onTap: () {
                    Get.toNamed(AppRoutes.getResDetailsScreen(
                        restaurant['restaurantName'].toString(),
                        '110302$restaurant'));
                  },
                  imageUrl: restaurant['restaurantImage'].toString(),
                  restaurantName: restaurant['restaurantName'].toString(),
                  restaurantCategory:
                      restaurant['restaurantCategory'].toString(),
                  restaurantRate: restaurant['restaurantRate'].toString(),
                  timeContainerHeight: Dimensions.height20 + Dimensions.height5,
                  timeContainerWidth: Dimensions.width50 + Dimensions.width20,
                  startTime: '11:30 AM',
                  startPts: '',
                  midTime: '12:30 PM',
                  midPts: '',
                  endTime: '01:00 PM',
                  endPts: '',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}