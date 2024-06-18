import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Assuming you have a defined list of categories
  final List<String> category = [
    "Popular",
    "Black coffee",
    "Winter special",
    "Decaff",
    "Popular",
    "Black coffee",
    "Winter special",
    "Decaff",
    "Popular",
    "Black coffee",
    "Winter special",
    "Decaff",
    "Popular",
    "Black coffee",
    "Winter special",
    "Decaff",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEDCC6),
      appBar: AppBar(
        titleSpacing: -8,
        leading: const Icon(Icons.search, color: Color(0xff230C02)),
        actions: [
          const Badge(
            backgroundColor: Color(0xffFB452D),
            child: Icon(Icons.notifications, color: Color(0xff230C02)),
          ),
          Container(width: 10),
          const Icon(Icons.menu, color: Color(0xff230C02)),
          Container(width: 10),
        ],
        title: const Text(
          'Good day, Selenay',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff230C02)),
        ),
        backgroundColor: const Color(0xffEEDCC6),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "What would you like\nto drink today?",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xff230C02)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width * .9,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: category.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(68),
                          color: index == 0
                              ? const Color(0xff230C02)
                              : const Color(0xffEEDCC6),
                        ),
                        width: 100,
                        child: Center(
                          child: Text(
                            category[index],
                            style: TextStyle(
                              color: index == 0
                                  ? const Color(0xffFFF5E9)
                                  : const Color(0xff230C02),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .7,
            decoration: const BoxDecoration(
              color: Color(0xff230C02),
            ),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffFFF5E9),
                      borderRadius: BorderRadius.circular(10)),
                  width: 75,
                  height: 75,
                  child: const ListTile(
                    title: Text(
                      "Black coffee",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff230C02),
                          fontSize: 10),
                    ),
                    subtitle: Text(
                      "ICED AMERICANO",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff230C02),
                          fontSize: 16),
                    ),
                    trailing: Image(
                      image: AssetImage("assets/Rectangle.png"),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
