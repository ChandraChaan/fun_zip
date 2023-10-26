import 'package:flutter/material.dart';

import '../../controllers/event_details_controller.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: controller.eventDetailsModel.contacts!.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text(controller.eventDetailsModel.contacts![index].emailAddress.toString()),
                ),
              ),
            );
          }),
    );
  }
}
