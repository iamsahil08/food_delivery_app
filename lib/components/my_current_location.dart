import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Deliver Now"),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // Address
                Text("1254, 6th Ave, New York, NY 10020",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold)),
                // Drop down menu
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }

  openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Enter your location"),
              content: const TextField(
                  decoration: InputDecoration(hintText: "Search Address")),
              actions: [
                // save button
                MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Save")),

                // cancel button
                MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancel"))
              ],
            ));
  }
}
