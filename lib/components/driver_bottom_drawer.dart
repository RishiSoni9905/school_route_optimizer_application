import 'package:flutter/material.dart';

class DriverBottomDrawer extends StatelessWidget {
  const DriverBottomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3,
      minChildSize: 0.15,
      maxChildSize: 0.75,
      builder: (BuildContext buildContext, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey[900], // Set background color to dark grey
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView(
            controller: scrollController, // Attach scrollController
            padding: const EdgeInsets.all(16),
            children: const [
              Text(
                "Hi!",
                style: TextStyle(color: Colors.white, fontSize: 16), // Text color for better visibility
              ),
              SizedBox(height: 20),
              Text(
                "Add more content here to make it scrollable and draggable.",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}
