import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../../add_calendar/add_calendar.dart';
import '../../booking_tickets/booking_tickets.dart';
import '../../create_event/controllers/create_event_controller.dart';
import '../../rsvp/rsvp_screen.dart';
import '../controllers/event_details_controller.dart';
import 'components/AboutThisPageWidget.dart';
import 'components/AppBarWidgetEventDetails.dart';
import 'components/BoothsWidget.dart';
import 'components/GiftRegistryWidget.dart';
import 'components/MapWidget.dart';
import 'components/NameAndDetailsCardWidget.dart';
import 'components/RatingCardWidget.dart';
import 'components/RelatedEventsWidget.dart';
import 'components/ShareWidget.dart';
import 'components/SignUpItemWidget.dart';
import 'components/SpeakersWidget.dart';
import 'components/SponsorsWidget.dart';
import 'components/WhatIsPlaceOfferWidget.dart';
import 'components/contacts.dart';

class EventDetailsView extends GetView<EventDetailsController> {
  const EventDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.5; // Adjust this fraction as needed

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: backgroundColor,
      body: GetX<CreateEventController>(
        init: CreateEventController(),
        builder: (_) {
          if (controller.loading.value == true) {
            return Center(child: Text('loading'));
          } else {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (controller.eventDetailsModel.detailPicture != null)
                    // Container(
                    //   decoration: BoxDecoration(
                    //     gradient: LinearGradient(
                    //         begin: Alignment.topCenter,
                    //         end: Alignment.bottomCenter,
                    //         colors: <Color>[
                    //           blueColor,
                    //           Colors.orange.withOpacity(.1)
                    //         ],
                    //         stops: [0.0, 1.0],
                    //         tileMode: TileMode.clamp),
                    //     image: DecorationImage(
                    //       image: NetworkImage(
                    //           controller.eventDetailsModel.detailPicture),
                    //       fit: BoxFit.fill,
                    //     ),
                    //   ),
                    //   height: 30,
                    //   child: AppBarWidgetEventDetails(),
                    // ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Colors.blue,
                            Colors.orange.withOpacity(0.1)
                          ],
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      child: Container(
                        height: imageHeight,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                controller.eventDetailsModel.detailPicture),
                            fit: BoxFit
                                .cover, // Maintain aspect ratio without stretching
                          ),
                        ),
                        child: AppBarWidgetEventDetails(),
                      ),
                    ),
                  //add filter
                  // Container(
                  //     decoration: BoxDecoration(
                  //       gradient: LinearGradient(
                  //           begin: Alignment.topCenter,
                  //           end: Alignment.bottomCenter,
                  //           colors: <Color>[
                  //             blueColor,
                  //             Colors.orange.withOpacity(.1)
                  //           ],
                  //           stops: [0.0, 1.0],
                  //           tileMode: TileMode.clamp),
                  //     ),
                  //     height: 30.percentHeight),

                  //* Above card
                  Container(
                    margin: EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                      children: [
                        NameAndDetailsCardWidget(
                          controller: controller,
                        ),
                        SizedBox(
                            height: 80,
                            child: AddToCalendar(controller: controller)),
                        5.height,
                        //* Rating and tags
                        RatingCardWidget(controller: controller),
                        5.height,

                        AboutThisPageWidget(controller: controller),
                        5.height,

                        ShareWidget(),
                        5.height,

                        Visibility(
                            visible: controller
                                        .eventDetailsModel.ticketCategories
                                        .toString() !=
                                    'null'
                                ? true
                                : false,
                            child: SizedBox(
                                height: 580,
                                child: BookTickets(controller: controller))),
                        5.height,

                        Visibility(
                            visible: controller.eventDetailsModel.rsvpRequired
                                        .toString() ==
                                    'true'
                                ? true
                                : false,
                            child: SizedBox(
                                height: 700,
                                child: RsvpScreen(controller: controller))),
                        5.height,

                        // CommentWidget(),
                        // 5.height,
                        //* Map
                        MapWidget(controller: controller),
                        5.height,

                        // OrganizersWidget(),
                        // 5.height,

                        // //* Sign up Items
                        Visibility(
                          visible: controller.eventDetailsModel.timeSlots
                                      .toString() !=
                                  'null'
                              ? true
                              : false,
                          child: SizedBox(
                            height: 600,
                            child: SignUpItemWidget(
                              controller: controller,
                            ),
                          ),
                        ),
                        //* Potluck items
                        Visibility(
                            visible: controller.eventDetailsModel.potluckItems
                                        .toString() !=
                                    'null'
                                ? true
                                : false,
                            child: SizedBox(
                                height: 520,
                                child: PotluckItems(
                                  controller: controller,
                                ))),
                        // PotluckItemsWidget(
                        //   controller: controller,
                        // ),
                        // Gift Registry
                        Visibility(
                          visible: controller.eventDetailsModel.giftItems
                                      .toString() !=
                                  'null'
                              ? true
                              : false,
                          child: GiftRegistryWidget(
                            controller: controller,
                          ),
                        ),
                        WhatIsPlaceOfferWidget(
                          controller: controller,
                        ),

                        // Speakers
                        Visibility(
                          visible: controller.eventDetailsModel.honoraryGuests
                                      .toString() !=
                                  'null'
                              ? true
                              : false,
                          child: SpeakersWidget(
                            controller: controller,
                          ),
                        ),
                        // Sponsors
                        Visibility(
                            visible: controller.eventDetailsModel.sponsors
                                        .toString() !=
                                    'null'
                                ? true
                                : false,
                            child: SizedBox(
                                height: 350,
                                child: SponsorsWidget(controller: controller))),

                        // Boots
                        Visibility(
                            visible: controller
                                        .eventDetailsModel.boothCategories
                                        .toString() !=
                                    'null'
                                ? true
                                : false,
                            child: BoothsWidget(controller: controller)),

                        // Visibility(
                        //     visible: controller.eventDetailsModel.contacts
                        //                 .toString() !=
                        //             'null'
                        //         ? true
                        //         : false,
                        //     child: SizedBox(
                        //         height: 200,
                        //         child: ContactsView(controller: controller))),

                        RelatedEventsWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
      // bottomNavigationBar: Container(
      //   // height: 40,
      //   width: Get.width,
      //   color: Colors.white,
      //   padding: EdgeInsets.all(20),
      //   child: PrimaryButtonWidget(
      //     text: 'Book Tickets',
      //     onPressed: () {
      //       // if (formKey.currentState!.saveAndValidate()) {
      //       //   controller.signUp();
      //       // }
      //     },
      //   ),
      // ),
    );
  }
}
