import 'package:flutter/material.dart';
import 'package:school_route_optimizer/components/driver_drawer.dart';
import '../components/driver_route.dart';

class DriverInterface extends StatelessWidget {
  DriverInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text('Current Option'),
        ),
        drawer: const DriverDrawer(),
        body: DriverRoute(),
      ),
    );
  }
}
