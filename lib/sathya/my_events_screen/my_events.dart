import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';
import 'package:fun_zippy/sathya/scarlett_screen/scarlett_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../app/data/model/UserModel.dart';
import '../../app/modules/my_goups/Success.dart';
import '../../app/routes/app_pages.dart';
import '../scanner.dart';

UserModel userModel = UserModel();

class MyEvents extends StatefulWidget {
  const MyEvents({Key? key});

  @override
  State<MyEvents> createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> {
  bool upcoming = false;
  bool completed = false;

  List<dynamic> data = [];
  final getStorage = GetStorage();

  Future<void> apiCalls() async {
    try {
      final response = await fetchApiData();
      if (response.statusCode == 200) {
        final apiData = json.decode(response.body);
        data.addAll(apiData['results']);

        setState(() {});
      } else {
        Get.defaultDialog(title: "Failure");
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('API call error: $e');
      // Handle the error as needed
    }
  }

  Future<http.Response> fetchApiData() async {
    dynamic userMap = getStorage.read('user');
    if (userMap != null) {
      userModel = UserModel.fromJson(userMap);
    }

    final url = Uri.parse(
        'https://funzippy.com/auth/event/event/search/getManagedEvents');
    final headers = {
      'Cookie': 'AuthToken=${userModel.token};',
    };

    final response = await http.get(url, headers: headers);

    print(response.body);
    return response;
  }

  @override
  void initState() {
    apiCalls();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 46,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0XFFEFEDFF),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      upcoming = true;
                      completed = false;
                    });
                  },
                  child: Container(
                    child: Text(
                      'Upcoming',
                      style: TextStyle(
                        color:
                            upcoming ? Color(0XFF5B46F4) : Color(0XFF696488),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: upcoming
                              ? Color(0XFF5B46F4)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      completed = true;
                      upcoming = false;
                    });
                  },
                  child: Container(
                    child: Text(
                      'Completed',
                      style: TextStyle(
                        color:
                            completed ? Color(0XFF5B46F4) : Color(0XFF696488),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: completed
                              ? Color(0XFF5B46F4)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          for (int a = 0; a < data.length; a++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0XFFC9C6E1)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/svg/rectangle_32.png'),
                      SizedBox(height: 7),
                      Text(
                        '${data[a]["name"]}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 14,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '${data[a]["startDateTime"]}',
                            style: TextStyle(fontSize: 10),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 18,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0XFFFF5C00).withOpacity(.22),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                '10 Days',
                                style: TextStyle(
                                    color: Color(0XFFFF5C00), fontSize: 8),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 14,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '${data[a]["city"]}',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0XFFD3CFEB),
                      ),
                      const SizedBox(height: 7),
                      Row(
                        children: [
                          Text(
                            'Event Type',
                            style: TextStyle(fontSize: 10),
                          ),
                          const SizedBox(width: 14),
                          Text(
                            ': Public',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: [
                            Text(
                              'Attendance',
                              style: TextStyle(fontSize: 10),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              ': In Person',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0XFFDC143C)),
                            ),
                            const SizedBox(width: 30),
                            Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Color(0XFFFD3A84)),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Get.to(QRCodeScannerScreen());
                                },
                                child: Icon(
                                  Icons.photo_camera,
                                  size: 16,
                                  color: Color(0XFFFD3A84),
                                ),
                              ),
                            ),
                            const SizedBox(width: 7),
                            Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Color(0XFF03A9F4)),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.EventDashboardScreen);
                                },
                                child: Image.asset('assets/svg/day.png'),
                              ),
                            ),
                            const SizedBox(width: 7),
                            Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Color(0XFF5B46F4)),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.EventScreen);
                                },
                                child: Icon(
                                  Icons.visibility_outlined,
                                  size: 15,
                                  color: Color(0XFF5B46F4),
                                ),
                              ),
                            ),
                            const SizedBox(width: 7),
                            Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Color(0XFFFD3A84)),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.EditingEvent);
                                },
                                child: Icon(
                                  Icons.edit,
                                  size: 15,
                                  color: Color(0XFFFD3A84),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
