import 'package:flutter/material.dart';
import 'package:restro_book/core/utils/exports.dart';
import 'package:restro_book/core/widgets/exports.dart';
import 'package:restro_book/modules/home/view/widget/browse_by_cuisine_section.dart';
import 'package:restro_book/modules/home/view/widget/explore_area_section.dart';
import 'package:restro_book/modules/home/view/widget/title_with_listView_widget.dart';

class ReservationBarScreen extends StatefulWidget {
  const ReservationBarScreen({Key? key}) : super(key: key);

  @override
  State<ReservationBarScreen> createState() => _ReservationBarScreenState();
}

class _ReservationBarScreenState extends State<ReservationBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _locationTimeWidget(),
            _availableLunchWidget(),
            _outdoorDiningWidget(),
            _newToRestroBookingWidget(),
            _featuredRestaurantsWidget(),
            _recentlyViewedWidget(),
            _happyOursWidget(),
            _availableForBrunchWidget(),
            _getInspiredWidget(),
            _browseByCuisineWidget(),
            _exploreAreaWidget(),
          ],
        ),
      ),
    );
  }

  Widget _locationTimeWidget() {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              height: size.height / 24,
              width: size.width / 2.4,
              decoration: BoxDecoration(
                border: Border.all(color: blackColor),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.person_outline_rounded,
                    size: 16,
                  ),
                  TextWidget(
                    '2 . today at 12:00 PM',
                    style: TextStyles.title32.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: size.height / 24,
                decoration: BoxDecoration(
                  border: Border.all(color: blackColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 16,
                    ),
                    TextWidget(
                      overflow: TextOverflow.ellipsis,
                      'Matuail Katherpool Dhaka',
                      style: TextStyles.title32.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _availableLunchWidget() {
    Size size = MediaQuery.of(context).size;
    return TitleWithListViewWidget(
      height: size.height / 2.5,
      titleOfTheList: 'Available for lunch',
      onTap: () {},
      listItemLength: 5,
      restaurantName: 'Nusr Et Steakehouse N...',
      restaurantCategory: 'Steakehouse',
      restaurantRate: '4.6(2716)',
      timeContainerHeight: size.height / 26,
      timeContainerWidth: size.width / 4.8,
      startTime: '11:30 AM',
      startPts: '+ 326 pts',
      midTime: '12:30 PM',
      midPts: 'Experience',
      endTime: '01:00 PM',
      endPts: '+ 750 pts',
    );
  }

  Widget _outdoorDiningWidget() {
    Size size = MediaQuery.of(context).size;
    return TitleWithListViewWidget(
      height: size.height / 2.5,
      titleOfTheList: 'Outdoor Dining',
      onTap: () {},
      listItemLength: 5,
      restaurantName: 'Nusr Et Steakehouse N...',
      restaurantCategory: 'Steakehouse',
      restaurantRate: '4.6(2716)',
      timeContainerHeight: size.height / 26,
      timeContainerWidth: size.width / 4.8,
      startTime: '11:30 AM',
      startPts: '+ 500 pts',
      midTime: '12:30 PM',
      midPts: 'Experience',
      endTime: '01:00 PM',
      endPts: '+ 123 pts',
    );
  }

  Widget _newToRestroBookingWidget() {
    Size size = MediaQuery.of(context).size;
    return TitleWithListViewWidget(
      height: size.height / 2.5,
      titleOfTheList: 'New to Restro Booking',
      onTap: () {},
      listItemLength: 5,
      restaurantName: 'Nusr Et Steakehouse N...',
      restaurantCategory: 'Steakehouse',
      restaurantRate: '4.6(2716)',
      timeContainerHeight: size.height / 26,
      timeContainerWidth: size.width / 4.8,
      startTime: '11:30 AM',
      startPts: '+ 359 pts',
      midTime: '12:30 PM',
      midPts: 'Experience',
      endTime: '01:00 PM',
      endPts: '+ 987 pts',
    );
  }

  Widget _featuredRestaurantsWidget() {
    Size size = MediaQuery.of(context).size;
    return TitleWithListViewWidget(
      height: size.height / 2.5,
      titleOfTheList: 'Featured restaurants',
      onTap: () {},
      listItemLength: 5,
      restaurantName: 'Nusr Et Steakehouse N...',
      restaurantCategory: 'Steakehouse',
      restaurantRate: '4.6(2716)',
      timeContainerHeight: size.height / 26,
      timeContainerWidth: size.width / 4.8,
      startTime: '11:30 AM',
      startPts: '+ 258 pts',
      midTime: '12:30 PM',
      midPts: 'Experience',
      endTime: '01:00 PM',
      endPts: '+ 741 pts',
    );
  }

  Widget _recentlyViewedWidget() {
    Size size = MediaQuery.of(context).size;
    return TitleWithListViewWidget(
      height: size.height / 3,
      titleOfTheList: 'Recently viewed',
      isViewNeeded: false,
      onTap: () {},
      listItemLength: 5,
      restaurantName: 'Nusr Et Steakehouse N...',
      restaurantCategory: 'Steakehouse',
      restaurantRate: '4.6(2716)',
      timeWithTitle: false,
      timeContainerHeight: 0,
      timeContainerWidth: 0,
    );
  }

  Widget _happyOursWidget() {
    Size size = MediaQuery.of(context).size;
    return TitleWithListViewWidget(
      height: size.height / 2.5,
      titleOfTheList: 'Happy Hours',
      isViewNeeded: false,
      onTap: () {},
      listItemLength: 5,
      restaurantName: 'Nusr Et Steakehouse N...',
      restaurantCategory: 'Steakehouse',
      restaurantRate: '4.6(2716)',
      timeContainerHeight: size.height / 26,
      timeContainerWidth: size.width / 4.8,
      startTime: '11:30 AM',
      startPts: '+ 147 pts',
      midTime: '12:30 PM',
      midPts: 'Experience',
      endTime: '01:00 PM',
      endPts: '+ 258 pts',
    );
  }

  Widget _availableForBrunchWidget() {
    Size size = MediaQuery.of(context).size;
    return TitleWithListViewWidget(
      height: size.height / 2.5,
      titleOfTheList: 'Available for brunch',
      onTap: () {},
      listItemLength: 5,
      restaurantName: 'Nusr Et Steakehouse N...',
      restaurantCategory: 'Steakehouse',
      restaurantRate: '4.6(2716)',
      timeContainerHeight: size.height / 26,
      timeContainerWidth: size.width / 4.8,
      startTime: '11:30 AM',
      startPts: '+ 654 pts',
      midTime: '12:30 PM',
      midPts: 'Experience',
      endTime: '01:00 PM',
      endPts: '+ 895 pts',
    );
  }

  Widget _getInspiredWidget() {
    Size size = MediaQuery.of(context).size;
    return TitleWithListViewWidget(
      height: size.height / 3,
      titleOfTheList: 'Get inspired',
      isViewNeeded: false,
      onTap: () {},
      listItemLength: 5,
      restaurantName: 'Nusr Et Steakehouse N...',
      restaurantCategory: 'Steakehouse',
      restaurantRate: '4.6(2716)',
      timeWithTitle: false,
      timeContainerHeight: 0,
      timeContainerWidth: 0,
    );
  }

  Widget _browseByCuisineWidget() {
    return BrowseByCuisineSectionWidget(
      title: 'Browse by cuisine',
      viewAllOnTap: () {},
      itemLength: 10,
      categoryName: 'American',
    );
  }

  Widget _exploreAreaWidget() {
    Size size = MediaQuery.of(context).size;
    return ExploreAresSectionWidget(
      height: size.height / 10,
      title: 'Explore the area',
      viewAllOnTap: () {},
      itemLength: 6,
      areaName: 'Upper East side',
    );
  }
}
