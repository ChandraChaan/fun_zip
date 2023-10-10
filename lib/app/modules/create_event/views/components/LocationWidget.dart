import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../../../../data/model/Suggestion.dart';
import '../../../../theme/text_theme.dart';
import '../../../../utilities/LocationProvider.dart';
import '../../../../widgets/progress.dart';
import '../../controllers/create_event_controller.dart';
import '../../../../widgets/CommonTextField.dart';

class LocationWidget extends GetView<CreateEventController> {
  const LocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: 'Location',
                  style: normalText.copyWith(fontWeight: FontWeight.bold)),
              TextSpan(
                text: '*',
                style: TextStyle(fontWeight: FontWeight.bold, color: redColor),
              ),
            ],
          ),
        ),
        5.height,
        InkWell(
            onTap: () async {
              // generate a new token here
              final sessionToken = Uuid().v4();
              final Suggestion? result = await showSearch(
                context: context,
                delegate: AddressSearch(sessionToken),
              );
              // This will change the text displayed in the TextField
              if (result != null) {
                try {
                  ProgressBar.start();

                  controller.selectedPlace =
                      await LocationProvider(sessionToken)
                          .getAddressDetails(result.description);
                  ProgressBar.stop();

                  controller.locationTextEditingController!.text =
                      controller.selectedPlace!.placemark.name!;
                  controller.address1TextEditingController!.text =
                      controller.selectedPlace!.placemark.street!;
                  controller.cityTextEditingController!.text =
                      controller.selectedPlace!.placemark.thoroughfare!;
                  controller.stateTextEditingController!.text =
                      controller.selectedPlace!.placemark.administrativeArea!;
                  controller.postalCodeTextEditingController!.text =
                      controller.selectedPlace!.placemark.postalCode!;
                  controller.countryTextEditingController!.text =
                      controller.selectedPlace!.placemark.country!;
                } catch (e) {
                  ProgressBar.stop();
                }
              }
            },
            child: CommonTextField(
                enabled: false,
                controller: controller.locationTextEditingController,
                name: 'location',
                hintText: 'Location',
                required: true)),
      ],
    );
  }
}

class AddressSearch extends SearchDelegate<Suggestion> {
  AddressSearch(this.sessionToken) {
    apiClient = LocationProvider(sessionToken);
  }

  final sessionToken;
  late final LocationProvider apiClient;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        tooltip: 'Clear',
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        // close(context, null);
        Get.back();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
      future: query == ""
          ? null
          : apiClient.fetchSuggestions(
              query, Localizations.localeOf(context).languageCode),
      builder: (context, snapshot) {
        if (query == '') {
          return Container(
            padding: EdgeInsets.all(16.0),
            child: Text('Enter your address'),
          );
        } else {
          if (snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title:
                      Text((snapshot.data?[index] as Suggestion).description),
                  onTap: () {
                    close(context, snapshot.data?[index] as Suggestion);
                  },
                );
              },
              itemCount: snapshot.data!.length,
            );
          } else {
            return Container(child: Text('Loading...'));
          }
        }
      },
    );
  }
}
