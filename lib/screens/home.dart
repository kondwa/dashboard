import 'package:dashboard/screens/dashboard.dart';
import 'package:dashboard/screens/leave.dart';
import 'package:dashboard/screens/loans.dart';
import 'package:dashboard/screens/travel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  List pages = [
    const DashboardScreen(),
    const LeaveScreen(),
    const TravelScreen(),
    const LoansScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPage,
          onTap: (index) {
            setState(() {
              currentPage = index;
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
    );
  }
}
