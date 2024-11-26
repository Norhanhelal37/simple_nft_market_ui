import 'package:flutter/material.dart';

class CustomeTabBar extends StatelessWidget {
  const CustomeTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Icon(
              Icons.table_chart,
              color: Colors.grey,
              size: 17,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Ranking",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.show_chart,
              color: Colors.grey,
              size: 17,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Activity",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ],
    );
  }
}

