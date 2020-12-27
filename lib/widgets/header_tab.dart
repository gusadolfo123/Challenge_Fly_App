import 'package:animaciones/widgets/flight_animation.dart';
import 'package:flutter/material.dart';

// class HeaderTab extends StatelessWidget {
//   const HeaderTab({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               HeaderItemTab(title: "Flight", selected: true),
//               HeaderItemTab(title: "Train"),
//               HeaderItemTab(title: "Bus"),
//             ],
//           ),
//           Expanded(child: FlightAnimation()),
//         ],
//       ),
//     );
//   }
// }

class HeaderItemTab extends StatelessWidget {
  final String title;
  final bool selected;

  const HeaderItemTab({Key key, this.title, this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 8),
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selected ? Colors.grey[800] : Colors.grey[400],
              ),
            ),
          ),
          Divider(
            color: selected ? Colors.red : Colors.grey[400],
            thickness: selected ? 2 : 1,
          ),
        ],
      ),
    );
  }
}

// import 'package:animaciones/widgets/flight_animation.dart';
// import 'package:flutter/material.dart';

// class HeaderTab extends StatelessWidget {
//   const HeaderTab({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               HeaderItemTab(title: "Flight", selected: true),
//               HeaderItemTab(title: "Train"),
//               HeaderItemTab(title: "Bus"),
//             ],
//           ),
//           Expanded(child: FlightAnimation()),
//         ],
//       ),
//     );
//   }
// }

class HeaderTab extends StatelessWidget {
  const HeaderTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.grey[800],
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.red, width: 2),
            ),
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                child: Text(
                  "Flight",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Train",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Bus",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                FlightAnimation(),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          )
        ],
      ),
    );
  }
}
