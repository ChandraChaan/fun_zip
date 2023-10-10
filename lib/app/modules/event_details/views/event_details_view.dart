import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_buttons.dart';
import '../../create_event/controllers/create_event_controller.dart';
import '../controllers/event_details_controller.dart';
import 'components/AboutThisPageWidget.dart';
import 'components/AppBarWidgetEventDetails.dart';
import 'components/BoothsWidget.dart';
import 'components/CommentWidget.dart';
import 'components/GiftRegistryWidget.dart';
import 'components/MapWidget.dart';
import 'components/NameAndDetailsCardWidget.dart';
import 'components/OrganizersWidget.dart';
import 'components/PotluckItemsWidget.dart';
import 'components/RatingCardWidget.dart';
import 'components/RelatedEventsWidget.dart';
import 'components/ShareWidget.dart';
import 'components/SignUpItemWidget.dart';
import 'components/SpeakersWidget.dart';
import 'components/SponsorsWidget.dart';
import 'components/WhatIsPlaceOfferWidget.dart';
import 'components/WhetherWidget.dart';
import 'components/WidgetWidget.dart';

class EventDetailsView extends GetView<EventDetailsController> {
  const EventDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: backgroundColor,
      body: GetX<CreateEventController>(
        init: CreateEventController(),
        builder: (_) {
          if (controller.loading.value == true) {
            return Center(child: Text('loading'));
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(children: <Widget>[
                    // Background with gradient
                    if (controller.eventDetailsModel.detailPicture != null)
                      Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  controller.eventDetailsModel.detailPicture),
                              fit: BoxFit.fill,
                            ),
                          ),
                          height: 30.percentHeight),
                    //add filter
                    Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                blueColor,
                                Colors.orange.withOpacity(.1)
                              ],
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                        height: 30.percentHeight),

                    // * AppBar
                    AppBarWidgetEventDetails(),
                    //* Above card
                    Container(
                      margin: EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          bottom: 20,
                          top: 20.percentHeight),
                      child: ListView(
                        padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
                        children: [
                          NameAndDetailsCardWidget(
                            controller: controller,
                          ),

                          5.height,
                          //* Rating and tags
                          RatingCardWidget(controller: controller),
                          5.height,

                          AboutThisPageWidget(controller: controller),
                          5.height,

                          ShareWidget(),
                          5.height,

                          CommentWidget(),
                          5.height,
                          //* Map
                          MapWidget(controller: controller),
                          5.height,

                          OrganizersWidget(),
                          5.height,

                          //* Sign up Items
                          SignUpItemWidget(),
                          //* Potluck items
                          PotluckItemsWidget(),
                          // Gift Registry
                          GiftRegistryWidget(),
                          // Whether
                          WhetherWidget(),
                          // Widget
                          WidgetWidget(),
                          //what is Place Offer
                          WhatIsPlaceOfferWidget(),

                          // Speakers
                          SpeakersWidget(),
                          // Sponsors
                          SponsorsWidget(),

                          // Boots
                          BoothsWidget(),

                          RelatedEventsWidget(),
                        ],
                      ),
                    )
                    // NameAndDetailsCardWidget(controller: controller),
                  ]),
                ),
              ],
            );
          }
        },
      ),
      bottomNavigationBar: Container(
        // height: 40,
        width: Get.width,
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: PrimaryButtonWidget(
          text: 'Book Tickets',
          onPressed: () {
            // if (formKey.currentState!.saveAndValidate()) {
            //   controller.signUp();
            // }
          },
        ),
      ),
    );
  }
}
