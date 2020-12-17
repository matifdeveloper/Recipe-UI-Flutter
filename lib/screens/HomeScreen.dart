import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/components/BottomNavBar.dart';
import 'package:recipe/screens/DetailScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ///Image paths and food names
  final images = [
    "assets/burger.jpg",
    "assets/chicken_g.jpg",
    "assets/chiken_f.jpeg",
    "assets/pizza.jpg",
    "assets/spaghetti.jpg",
  ];

  final foodNames = [
    "Grilled Burger",
    "Crispy Fried Chicken",
    "Grilled Chicken",
    "Pasta",
    "Pizza"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Container for header
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Looking for your favorite meal",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 24,
                          ),
                        ),
                      ),

                      // For Spacing
                      SizedBox(
                        width: 40,
                      ),

                      IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.grey[800],
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications_none),
                        color: Colors.grey[800],
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                /// For vertical spacing
                SizedBox(
                  height: 32,
                ),

                // Container for list of Recipes type
                // Give 25% height relative to screen
                Container(
                  height: size.height * 0.25,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return AspectRatio(
                        aspectRatio: 0.9 / 1,
                        /// Width : Height
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                child: ClipRRect(
                                  child: Image.asset(
                                    images[index],
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                '${foodNames[index]} Recipes',
                                style: GoogleFonts.roboto(
                                    color: Colors.grey[800], fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, __) => SizedBox(
                      width: 16,
                    ),
                    itemCount: foodNames.length,
                  ),
                ),

                /// For vertical spacing
                SizedBox(
                  height: 32,
                ),

                /// For quick recipe list
                Container(
                  height: size.height * 0.4,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailScreen(image: images[4-index], title: foodNames[4-index],)
                            ),
                          );
                        },
                        child: AspectRatio(
                          aspectRatio: 0.9 / 1,

                          /// Width : Height
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Hero(
                                  child: Container(
                                    child: ClipRRect(
                                      child: Image.asset(
                                        images[4 - index],
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  tag: images[4 - index],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  '${foodNames[4 - index]}',
                                  style: GoogleFonts.roboto(
                                    color: Colors.grey[800],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  'Recipe by Ibad Ullah',
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey[600], fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (_, __) => SizedBox(
                      width: 16,
                    ),
                    itemCount: foodNames.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
