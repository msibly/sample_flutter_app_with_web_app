import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  // Define a data model for each item in the list
  final List<Map<String, dynamic>> itemList = [
    {'color': Colors.red, 'icon': Icons.access_alarm, 'text': 'Red'},
    {'color': Colors.blue, 'icon': Icons.access_time, 'text': 'Blue'},
    {'color': Colors.green, 'icon': Icons.accessibility_new, 'text': 'Green'},
    {'color': Colors.yellow, 'icon': Icons.account_circle, 'text': 'Yellow'},
    {
      'color': Colors.orange,
      'icon': Icons.account_balance_wallet,
      'text': 'Orange'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 218, 218),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 96, 33, 243),
        title: Text(
          'Home ',
          style: TextStyle(
            color: Colors.white, // Set the font color to white
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 96, 33, 243),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0), // Make it round
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.3),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 96, 33, 243),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Templates',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    // Handle "See All" action
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 96, 33, 243),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: SizedBox(
              height: 100, // Adjust height as needed
              child: CarouselSlider(
                items: [
                  carouselItem('Invoice for Payment', Icons.adf_scanner_rounded,
                      Colors.blue),
                  carouselItem('Transaction History',
                      Icons.chrome_reader_mode_rounded, Colors.green),
                  carouselItem('Client Details', Icons.people_alt_rounded,
                      Colors.orange),
                  carouselItem('Bucket List', Icons.task_rounded, Colors.red),
                  carouselItem('Miscellaneous',
                      Icons.miscellaneous_services_rounded, Colors.purple),
                ],
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  autoPlay: true, // Enable auto scrolling
                  aspectRatio: 2, // Adjust aspect ratio
                  enlargeCenterPage: true,
                  viewportFraction:
                      0.5, // Set the width to half of the current width
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Elements Section',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 96, 33, 243)),
                ),
                TextButton(
                  onPressed: () {
                    // Handle "See All" action
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(color: Color.fromARGB(255, 96, 33, 243)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150, // Set the height of the grid
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: itemList.map((item) {
                return Padding(
                  padding: const EdgeInsets.all(8.0), // Add padding here
                  child: Container(
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(10.0), // Add border radius
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(item['icon'],
                            color: Color.fromARGB(255, 96, 33, 243), size: 50),
                        const SizedBox(height: 10),
                        Text(
                          item['text'],
                          style: TextStyle(
                              color: Color.fromARGB(255, 96, 33, 243)),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Elements Section',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 96, 33, 243)),
                ),
                TextButton(
                  onPressed: () {
                    // Handle "See All" action
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(color: Color.fromARGB(255, 96, 33, 243)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150, // Set the height of the grid
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: itemList.map((item) {
                return Padding(
                  padding: const EdgeInsets.all(8.0), // Add padding here
                  child: Container(
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(10.0), // Add border radius
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(item['icon'],
                            color: Color.fromARGB(255, 96, 33, 243), size: 50),
                        const SizedBox(height: 10),
                        Text(
                          item['text'],
                          style: TextStyle(
                              color: Color.fromARGB(255, 96, 33, 243)),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Elements Section',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 96, 33, 243)),
                ),
                TextButton(
                  onPressed: () {
                    // Handle "See All" action
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(color: Color.fromARGB(255, 96, 33, 243)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150, // Set the height of the grid
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: itemList.map((item) {
                return Padding(
                  padding: const EdgeInsets.all(8.0), // Add padding here
                  child: Container(
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(10.0), // Add border radius
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(item['icon'],
                            color: Color.fromARGB(255, 96, 33, 243), size: 50),
                        const SizedBox(height: 10),
                        Text(
                          item['text'],
                          style: TextStyle(
                              color: Color.fromARGB(255, 96, 33, 243)),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget carouselItem(String text, IconData iconData, Color color) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, size: 40, color: Colors.white),
            SizedBox(height: 4),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.white),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
