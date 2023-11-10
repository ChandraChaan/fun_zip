import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/modules/home/controllers/home_controller.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../../../../../../config/images_links.dart';
import '../../../../../../theme/text_theme.dart';
import '../../../../../../widgets/CommonDropdownWidget.dart';
import '../../../../../../widgets/custom_buttons.dart';
import '../../../../../../widgets/CommonTextField.dart';

class SearchEventDialog extends GetView<HomeController> {
  final formKey = GlobalKey<FormBuilderState>();

  SearchEventDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        actions: [
          InkWell(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset(closeSearchPageIconImage)),
          20.width
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
          const EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 20),
          child: FormBuilder(
            key: formKey,
            child: Column(
              children: [
                CommonTextField(
                  controller: controller.searchEventTextEditingController,
                  name: 'search',
                  hintText: 'Search by name...',
                  required: false,
                  prefixIcon: IconButton(
                    onPressed: null,
                    icon: SvgPicture.asset(SearchIconTextFieldIconImage),
                  ),
                ),
                20.height,
                // add obx
                Obx(() {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // 20.height,
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Where',
                                style: normalText.copyWith(
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: '*',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: redColor),
                            ),
                          ],
                        ),
                      ),
                      10.height,
                      CommonDropdownWidget(
                        keyName: 'Location',
                        hintText: 'Location',
                        itemList: listOfCities,
                        onPressed: (value) {
                          controller.selectedCity = value;
                        },
                      ),
                      if(controller.locReq.value)
                        Text(
                          "This is mandatory field",
                          style: TextStyle(color: Colors.red, fontSize: 10),
                        ),
                    ],
                  );
                }),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    20.height,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'When',
                              style: normalText.copyWith(
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: redColor),
                          ),
                        ],
                      ),
                    ),
                    10.height,
                    CommonDropdownWidget(
                      keyName: 'When',
                      hintText: 'When',
                      itemList: ['Today', 'This Week', 'This Month'],
                      onPressed: (p0) {
                        controller.selectedDay = p0;
                      },
                    ),
                    if(controller.dayReq.value)
                      Text(
                        "This is mandatory field",
                        style: TextStyle(color: Colors.red, fontSize: 10),
                      ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    20.height,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Category',
                              style: normalText.copyWith(
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: redColor),
                          ),
                        ],
                      ),
                    ),
                    10.height,
                    CommonDropdownWidget(
                      keyName: 'Category',
                      hintText: 'Category',
                      itemList: listOfCategory,
                      onPressed: (value) {
                        controller.selectedCategory = value;
                      },
                    ),
                  ],
                ),
                FormBuilderCheckbox(
                  name: 'online',
                  title: Text('Online'),
                  checkColor: blueColor,
                  activeColor: blueColor.withOpacity(.1),
                  onChanged: (value) {
                    controller.selectedModeOnline = value;
                  },
                  // decoration: InputDecoration(),
                  // shape: RoundedRectangleBorder(
                  //     side: BorderSide(color: blueColor, width: 1)),
                ),
                // Expanded(
                //   child: Row(
                //     children: [
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // height: 40,
        width: Get.width,
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: SmallWhiteBackgroundButton(
                    onPressed: () {
                      formKey.currentState?.reset();
                    },
                    height: 44,
                    radius: 10,
                    child: Text(
                      'Clear All',
                      style: buttonText.copyWith(color: redColor, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    borderColor: redColor)),
            5.width,
            Expanded(
              flex: 1,
              child: PrimaryButtonWidget(
                  radius: 10,
                  text: 'Search',
                  onPressed: () {
                    // changes satyha
                    if (controller.selectedCity != null && controller.selectedDay != null )  {
                      controller.locReq.value = false;
                      Get.back();
                      controller.getAllEvents();
                      // controller.fetchData();
                      formKey.currentState!.reset();
                      // controller.verifyPhoneOTP();
                    } else {
                      controller.locReq.value = false;
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CountrySearchWidget extends StatefulWidget {
  @override
  _CountrySearchWidgetState createState() => _CountrySearchWidgetState();
}

class _CountrySearchWidgetState extends State<CountrySearchWidget> {
  TextEditingController _searchController = TextEditingController();
  List<String> _suggestions = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchTextChanged);
  }

  void _onSearchTextChanged() {
    setState(() {
      _suggestions = listOfCities
          .where((country) =>
          country
              .toLowerCase()
              .contains(_searchController.text.toLowerCase()))
          .toList();
    });
  }

  void _handleSelection(String selectedCountry) {
    // Handle the selected country here.
    print('Selected: $selectedCountry');
    _searchController.text = selectedCountry;

    // You can perform any desired action with the selected country.
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: "Location",
              fillColor: Colors.white70,
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: _suggestions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_suggestions[index]),
                  onTap: () {
                    // Handle selection here.
                    print('Selected: ${_suggestions[index]}');
                    _handleSelection(_suggestions[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
