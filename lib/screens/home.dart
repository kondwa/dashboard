import 'package:dashboard/controllers/navigationController.dart';
import 'package:dashboard/screens/dashboard.dart';
import 'package:dashboard/screens/leave.dart';
import 'package:dashboard/screens/loans.dart';
import 'package:dashboard/screens/travel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NavigationController nav = Get.find();
  List pages = [
    const DashboardScreen(),
    const LeaveScreen(),
    const TravelScreen(),
    const LoansScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[nav.currentPage.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: nav.currentPage.value,
            onTap: (index) {
              setState(() {
                nav.currentPage.value = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: "Dashboard"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: "Leave"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.travel_explore), label: "Travel"),
              BottomNavigationBarItem(icon: Icon(Icons.money), label: "Loans")
            ]),
      ),
    );
  }
}
