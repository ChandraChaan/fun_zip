import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imageScreen extends StatelessWidget{
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
                  "Image Link",
                  style: TextStyle(
                      fontSize: 20,
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
                  "Add image link that people can purchase.",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF5E5A80),
                      fontFamily: "Poppins"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "Image link",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF5E5A80),
                        fontFamily: "Poppins"),
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Color(0XFFDC143C),
                  size: 10,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.88,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    hintText: "Image URL",
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Color(0XFF86839B))),
              ),
            ),
            const SizedBox(
              height: 250,
            ),
            GestureDetector(
              onTap: (){
              },
              child: Container(
                width: 336,
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0XFFDC143C)),
                alignment: Alignment.center,
                child: const Text(
                  "Save Image Link",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 336,
              height: 46,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0XFFC9C6E1)),
                borderRadius: BorderRadius.circular(50),
                // color: const Color(0XFFDC143C)
              ),
              alignment: Alignment.center,
              child: const Text(
                "Cancel",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}