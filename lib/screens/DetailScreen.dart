import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final image;
  final title;

  DetailScreen({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Hero(
              child: Container(
                height: size.height * 0.55,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              tag: image,
            ),
            DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: 0.6,
              minChildSize: 0.6,
              builder: (_, controller) {
                return SingleChildScrollView(
                  controller: controller,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    height: 800,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              title,
                              style: GoogleFonts.roboto(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(Icons.favorite),
                              onPressed: () {},
                              color: Colors.redAccent,
                              iconSize: 30,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'By Ibad Ullah',
                          style:
                              GoogleFonts.roboto(fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey[400],
                              size: 15,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 24,
                        ),

                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Colors.grey[200])),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Calories',
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        '174kCal',
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                      Border.all(color: Colors.grey[200])),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Ingredients',
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        '06',
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                      Border.all(color: Colors.grey[200])),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Time',
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        '3 Hours',
                                        style: GoogleFonts.roboto(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 24,
                        ),

                        Text('About Recipe', style: GoogleFonts.roboto(
                          fontSize: 20, fontWeight: FontWeight.bold
                        ),),

                        SizedBox(height: 4,),

                        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id lacus sodales, elementum turpis ut, facilisis lacus. Aliquam vestibulum faucibus convallis. Sed semper elit eget lacinia elementum. Nullam sem turpis, tristique nec arcu at, molestie mollis sapien. Integer tristique fringilla erat at egestas. Morbi malesuada ligula nulla, at lobortis augue laoreet vel. Cras et gravida mauris. Aliquam turpis sapien, vulputate porta tempor id, ullamcorper at sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut et tortor vitae nibh aliquet mattis ac id sapien. Integer porta ipsum turpis, at rutrum felis vestibulum et.', style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300, color: Colors.grey
                        ),),

                        SizedBox(
                          height: 24,
                        ),

                        Text('Cooking Method', style: GoogleFonts.roboto(
                          fontSize: 20, fontWeight: FontWeight.bold
                        ),),

                        SizedBox(height: 4,),

                        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id lacus sodales, elementum turpis ut, facilisis lacus. Aliquam vestibulum faucibus convallis. Sed semper elit eget lacinia elementum. Nullam sem turpis, tristique nec arcu at, molestie mollis sapien. Integer tristique fringilla erat at egestas. Morbi malesuada ligula nulla, at lobortis augue laoreet vel. Cras et gravida mauris. Aliquam turpis sapien, vulputate porta tempor id, ullamcorper at sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut et tortor vitae nibh aliquet mattis ac id sapien. Integer porta ipsum turpis, at rutrum felis vestibulum et.', style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300, color: Colors.grey
                        ),),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
