import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:i_connect/screens/home_screen.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class StatusChecker extends StatefulWidget {
  const StatusChecker({super.key});

  @override
  State<StatusChecker> createState() => _StatusCheckerState();
}

class _StatusCheckerState extends State<StatusChecker> {
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool showAlert = false;
  @override
  void initState() {
    getConnectivity();
    super.initState();
  }

  getConnectivity() => subscription = Connectivity()
          .onConnectivityChanged
          .listen((ConnectivityResult result) async {
        isDeviceConnected = await InternetConnectionChecker().hasConnection;
        if (!isDeviceConnected) {
          showAlert = true;
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                content: Text('No Internet Connection'),
              );
            },
          );
          setState(() {});
        } else {
          if (showAlert) {
            Navigator.of(context).pop();
          }
        }
      });

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
