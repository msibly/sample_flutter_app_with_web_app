import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  // Define a data model for each item in the list
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int myIndex = 0;
  final List<Map<String, dynamic>> paymentList = [
    {'icon': Icons.home_outlined, 'text': 'Home'},
    {'icon': Icons.smartphone, 'text': 'Mobile'},
    {'icon': Icons.blur_circular, 'text': 'Internet'},
    {'icon': Icons.home_max_rounded, 'text': 'Braodband'},
    {'icon': Icons.account_balance_wallet, 'text': 'Credit'},
  ];
  final List<Map<String, dynamic>> itemList = [
    {'icon': Icons.account_circle, 'text': 'To Contact'},
    {'icon': Icons.credit_card, 'text': 'Card'},
    {'icon': Icons.refresh, 'text': 'Self'},
    {'icon': Icons.outbond_rounded, 'text': 'Optional'},
  ];
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                  'Payments',
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
            height: 120, // Set the height of the grid
            child: ListView(
              // First grid
              scrollDirection: Axis.horizontal,
              children: paymentList.map((item) {
                return Padding(
                  padding: const EdgeInsets.all(8.0), // Add padding here
                  child: Container(
                    width: 120,
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
                  'Transfers',
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
            height: 120, // Set the height of the grid
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: itemList.map((item) {
                return Padding(
                  padding: const EdgeInsets.all(8.0), // Add padding here
                  child: Container(
                    width: 120,
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
                  'Section',
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
            height: 120, // Set the height of the grid
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: itemList.map((item) {
                return Padding(
                  padding: const EdgeInsets.all(8.0), // Add padding here
                  child: Container(
                    width: 120,
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {});
          int myIndex = index;
        },
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User')
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
