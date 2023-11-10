import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoutScreen extends StatelessWidget{
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF5F4F9),
      appBar: AppBar(backgroundColor: const Color(0XFFF5F4F9), actions: [
        IconButton(
          icon: const Icon(
            Icons.cancel_outlined,
            color: Color(0XFF85829B),
          ),
          onPressed: () {
            // Define the action when the right icon is pressed
          },
        ),
      ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "Log Out",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "Are you sure do you want to log Out",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF5E5A80),
                      fontFamily: "Poppins"),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.44,
                  height: MediaQuery.of(context).size.height*0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: const Color(0XFFC9C6E1)),
                      color: const Color(0XFFF5F4F9)
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.44,
                    height: MediaQuery.of(context).size.height*0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: const Color(0XFFC9C6E1)),
                        color: const Color(0XFFDC143C)
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Log out",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );

  }
}