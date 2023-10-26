import 'package:flutter/material.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../../../../data/model/HomeApiResponseModel.dart';
import '../../../../routes/app_pages.dart';
import '../../../home/controllers/home_controller.dart';
import '../../../../widgets/SingleEventItemWidget.dart';

class RelatedEventsWidget extends StatelessWidget {
  const RelatedEventsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.height,
        Text('Related Events'),
        10.height,
        ListView.builder(
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: HomeController.to.apiResponseModel.value.results!.length,
          itemBuilder: (context, index) {
            Results result =
                HomeController.to.apiResponseModel.value.results![index];
            return SingleEventItemWidget(
              result: result,
              onPressed: () {
                // print('started');
                // HomeController.to.goToEventDetailsPage(uid: result.uid);
                // Get.defaultDialog.t();
                Get.offAllNamed(Routes.EVENT_DETAILS, arguments: result.uid);

                // print('completed');


              },
            );
          },
        ),
      ],
    );
  }
}
