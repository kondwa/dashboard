import 'package:dashboard/controllers/navigationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  NavigationController nav = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Wrap(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                nav.currentPage.value = 0;
              });
            },
            child: SizedBox(
              height: 100,
              width: 100,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.dashboard), Text("Dashboard")],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                nav.currentPage.value = 1;
              });
            },
            child: const SizedBox(
              height: 100,
              width: 100,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.calendar_month), Text("Leave")],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                nav.currentPage.value = 2;
              });
            },
            child: const SizedBox(
              height: 100,
              width: 100,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.travel_explore), Text("Travel")],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                nav.currentPage.value = 3;
              });
            },
            child: const SizedBox(
              height: 100,
              width: 100,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.money), Text("Loans")],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
