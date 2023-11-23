import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../../utilities/date_time_format.dart';
import '../../add_calendar/add_calendar.dart';
import '../../booking_tickets/booking_tickets.dart';
import '../../create_event/controllers/create_event_controller.dart';
import '../../rsvp/rsvp_screen.dart';
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
import 'components/contacts.dart';

class EventDetailsView extends GetView<EventDetailsController> {
  const EventDetailsView({Key? key}) : super(key: key);

  calculateDayLeft({required startDate}) {
    String day = '';
    DateTime? currentDate;
    if (startDate.runtimeType == int) {
      currentDate = DateTime.fromMillisecondsSinceEpoch(startDate);
    } else if (startDate.runtimeType == String) {
      currentDate = DateTime.tryParse(startDate.toString());
    }

    final difference = currentDate!.difference(today).inDays;

    if (difference == 0) {
      return 'Today';
    }

    if (difference / 30 > 1) {
      day += '${difference ~/ 30} month';
    }

    if (difference / 30 >= 2) {
      day += 's';
    }

    if (difference % 30 >= 2) {
      day += ' ${difference % 30} days left';
    } else {
      day += ' ${difference % 30} day left';
    }

    return day;
  }

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
                                .fill, // Maintain aspect ratio without stretching
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
                                height: 700,
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
                        //* Sign up Items
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
                        PotluckItemsWidget(
                          controller: controller,
                        ),
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
                        Visibility(
                            visible: controller.eventDetailsModel.contacts
                                        .toString() !=
                                    'null'
                                ? true
                                : false,
                            child: SizedBox(
                                height: 200,
                                child: ContactsView(controller: controller))),
                        Visibility(
                            visible: controller.eventDetailsModel.sponsors
                                        .toString() !=
                                    'null'
                                ? true
                                : false,
                            child: SizedBox(
                                height: 350,
                                child: SponsorsWidget(controller: controller))),
                        Visibility(
                            visible: controller
                                        .eventDetailsModel.boothCategories
                                        .toString() !=
                                    'null'
                                ? true
                                : false,
                            child: BoothsWidget(controller: controller)),

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
                        OrganizersWidget(),
                        5.height,
                        MapWidget(controller: controller),
                        5.height,
                        // Todo

                        WhatIsPlaceOfferWidget(
                          controller: controller,
                        ),
                        CommentWidget(controller: controller),
                        5.height,
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
      floatingActionButton: FloatingActionButton(
        materialTapTargetSize: MaterialTapTargetSize.padded,
        backgroundColor: Color(0XFF5B46F4),
        onPressed: () {
          showMenu(
            context: context,
            position: RelativeRect.fromLTRB(300, 600, 0, 250),
            items: [
              PopupMenuItem<String>(
                value: 'Sponsorship',
                textStyle: TextStyle(fontSize: 10, color: Colors.red),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(Routes.SponsorshipScreen);
                  },
                  child: Container(
                    alignment: Alignment.centerRight, // Align text to the right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Sponsorship'),
                        7.width,
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.red)),
                            child: Image.asset('assets/svg/hand.png')),
                      ],
                    ),
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Booth Space',
                textStyle: TextStyle(fontSize: 10, color: Colors.red),
                child: Container(
                  alignment: Alignment.centerRight, // Align text to the right
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Booth Space'),
                      7.width,
                      Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.red)),
                          child: Image.asset('assets/svg/round.png')),
                    ],
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Event Schedule',
                textStyle: TextStyle(fontSize: 10, color: Colors.red),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(Routes.ScheduleScreen);
                  },
                  child: Container(
                    alignment: Alignment.centerRight, // Align text to the right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Event Schedule'),
                        7.width,
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.red)),
                            child: Image.asset('assets/svg/vectory_red.png')),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ).then<void>((String? value) {
            if (value != null) {
              print('Selected: $value');
            }
          });
        },
        child: Image.asset('assets/svg/floating_button.png'),
        mini: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
