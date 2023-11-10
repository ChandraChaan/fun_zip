// // ... (Previous code)
//
// for (int a = 0; a < data.length; a++)
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: InkWell(
// onTap: () {
// navigateToEventDetails(data[a]); // Function to navigate to event details
// },
// child: Container(
// height: 400,
// // ... (Rest of the code for event container)
// ),
// ),
// ),
//
// // ... (Rest of the code)
//
// void navigateToEventDetails(dynamic eventData) {
// // Add code to navigate to the event details screen
// // You can use Get.to or any other navigation method
// // Example using Get.to:
// Get.to(EventDetailsScreen(eventData: eventData));
// }
