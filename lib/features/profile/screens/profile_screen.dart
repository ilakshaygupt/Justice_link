import 'package:flutter/material.dart';
import 'package:justice_link/common/app_bar.dart';
import 'package:justice_link/features/profile/widgets/case_stats.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreemState();
}

class _ProfileScreemState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarfun("Your Profile"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        const AssetImage("assets/images/profile2.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mehul sharma",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "12/02/2023",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "mehulsharma@gmail.com",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.edit_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "Success Rate",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 150.0,
                              animation: true,
                              lineHeight: 8.0,
                              percent: 0.8,
                              // center: Text("80%"),
                              barRadius: const Radius.circular(10),
                              backgroundColor:
                                  const Color.fromARGB(255, 20, 20, 20),
                              progressColor: const Color(0xFF046200),
                            ),
                            const Text(
                              "80%",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Your Documents",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  margin: const EdgeInsets.all(5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  width: double.infinity,
                  // height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // const SizedBox(
                      //   width: 10,
                      // ),
                      Column(
                        children: [
                          Image.asset("assets/images/pdf.png"),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text("Govt\nIssued Id",
                              style: TextStyle(fontSize: 12))
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/images/pdf.png"),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text("Adhar\nCard",
                              style: TextStyle(fontSize: 12))
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/images/pdf.png"),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            "Lawyer\nCertificate",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFE5E5E5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Your Skills:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Text("Civil Matters"),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Text("Property & Real Estate"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFE5E5E5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Bio:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Text(
                        "Advocate Sudershani has since been practicing and handling cases independently with a result oriented approach, both professionally and ethically and has now acquired 8 years of professional experience in providing legal consultancy and advisory services. She has completed her BA.LLB(Hons) from Jamia Millia Islamia and has been practicing and handling cases independently and provides legal consultancy and advisory services."),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFE5E5E5),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CaseStats(
                            status: "Lost",
                            color: Color.fromARGB(255, 203, 31, 18),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "4",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CaseStats(
                            status: "InProgress",
                            color: Color.fromARGB(255, 232, 109, 37),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "5",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CaseStats(
                            status: "Won",
                            color: Color(0xFF004D14),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "14",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/par.png",
                  fit: BoxFit.contain,
                ))
          ],
        ),
      ),
    );
  }
}
