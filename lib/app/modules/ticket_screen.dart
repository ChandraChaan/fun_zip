import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF5F4F9),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: const Icon(
          Icons.menu_outlined,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          "Ticketing & RSVP",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontFamily: "Poppins"),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0XFF5B46F4),
                        ),
                        borderRadius: BorderRadius.circular(21),
                        color: const Color(0XFFE3DFFF)),
                    alignment: Alignment.center,
                    child: const Text(
                      "Open",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0XFF5B46F4),
                        ),
                        borderRadius: BorderRadius.circular(21),
                        color: const Color(0XFFE3DFFF)),
                    alignment: Alignment.center,
                    child: const Text(
                      "RSVP Only",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0XFF5B46F4),
                        ),
                        borderRadius: BorderRadius.circular(21),
                        color: const Color(0XFFE3DFFF)),
                    alignment: Alignment.center,
                    child: const Text(
                      "Ticketed",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0XFF5B46F4),
                        ),
                        borderRadius: BorderRadius.circular(21),
                        color: const Color(0XFF5B46F4)),
                    alignment: Alignment.center,
                    child: const Text(
                      "Fund Raising",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "First Name",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.88,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 18),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              hintText: "First Name"),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      const Text(
                        "Last Name",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.88,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 18),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              hintText: "Last Name"),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      const Text(
                        "Amount",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.88,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 18),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              hintText: "Amount"),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      const Text(
                        "Percentage of Funds Raised",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.88,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 18),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              hintText: "Amount"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => messageScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.88,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0XFFDC143C),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Save Fundraiser Details",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
