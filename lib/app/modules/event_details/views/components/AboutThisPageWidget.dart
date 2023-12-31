import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:fun_zippy/app/theme/text_theme.dart';

import '../../../../widgets/rounded_border.dart';
import '../../controllers/event_details_controller.dart';

class AboutThisPageWidget extends StatelessWidget {
  const AboutThisPageWidget({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text('About This Event', style: titleBoldText),
            ),
            Html(
              data: '${controller.eventDetailsModel.description}',
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: 100,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.all(Radius.circular(10)),
            //       image: DecorationImage(
            //         image: AssetImage('assets/svg/details_2.png'), fit: BoxFit.fitWidth
            //       ),
            //     ),
            //   ),
            // ),
            // Row(
            //   children: [
            //     Expanded(
            //       flex: 1,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Container(
            //           height: 100,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.all(Radius.circular(10)),
            //             image: DecorationImage(
            //               image: AssetImage('assets/svg/rectangle_333.png'), fit: BoxFit.fitWidth
            //             )
            //           ),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       flex: 1,
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Container(
            //           height: 100,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.all(Radius.circular(10)),
            //               image: DecorationImage(
            //                   image: AssetImage('assets/svg/rectangle_34.png',), fit: BoxFit.fitWidth
            //               )
            //           ),
            //         ),
            //       ),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
