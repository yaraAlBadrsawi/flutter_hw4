import 'package:flutter/material.dart';

import 'change_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<AssetImage> freeCourseImage = [
    const AssetImage('images/arts.jpg'),
    const AssetImage('images/computerScience.jpg'),
    const AssetImage('images/ecommerce.jpg'),
  ];

  List<AssetImage> paidCourseImage = [
    const AssetImage('images/socialMediaMarketing.jpg'),
    const AssetImage('images/social_media_influencer.jpg'),
    const AssetImage('images/biology.jpg'),
  ];

  List<String> freeCourse = [
    'Arts and Humanities',
    'Computer Science',
    'Economic and Financial'
  ];

  List<String> paidCourse = [
    'Social Media Marketing',
    'Social Media Influencer',
    'Biology and Science'
  ];

  List drawerTitles = [
    'Home', // 0
    'Course', // 1
    'News', // 2
    'Product', // 3
    'Cart', // 4
    'My Profile', // 5
    'Setting', // 6
    'Logout' // 7
  ];

  List<Icon> icons = [
    const Icon(
      // 0
      Icons.home,
      color: Color(0xffff96ff),
    ),
    const Icon(
      // 1
      Icons.my_library_books_sharp,
      color: Color(0xffff96ff),
    ),
    const Icon(
      // 2
      Icons.newspaper,
      color: Color(0xffff96ff),
    ),
    const Icon(
      // 3
      Icons.production_quantity_limits,
      color: Color(0xffff96ff),
    ),
    const Icon(
      // 4
      Icons.card_travel,
      color: Color(0xffff96ff),
    ),
    const Icon(
      // 5
      Icons.person_pin,
      color: Color(0xffff96ff),
    ),
    const Icon(
      // 6
      Icons.settings,
      color: Color(0xffff96ff),
    ),
    const Icon(
      // 7
      Icons.logout,
      color: Color(0xffff96ff),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: getListView(),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xffff9ffa),
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 22.0, left: 12, bottom: 14),
                  child: Text(
                    'CheckOut Our Demos',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 22.0, right: 22, bottom: 14),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Flexible(
              // flex: 2,
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (buildContext, index) {
                    return Container(
                      width: 320,
                      margin: const EdgeInsets.all(
                          8.0), // add margin to the container

                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 8)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('images/light.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(
                                'How to Add lightning effect in photos',
                                style: TextStyle(
                                    fontFamily: 'Biter',
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0, bottom: 14),
                              child: Text(
                                'photoshop',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 22.0, left: 12, bottom: 14),
                  child: Text(
                    'Our Free Courses',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 22.0, right: 22, bottom: 14),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (buildContext, index) {
                      return Card(
                        shadowColor: Colors.grey,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Container(
                              // add margin to the container
                              width: 180,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                  image: freeCourseImage[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 20.0, left: 20, top: 10, bottom: 5),
                              child: Text(
                                freeCourse[index],
                                style: const TextStyle(
                                    fontFamily: 'Biter',
                                    color: Color(0xffb5700a)),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 22.0, left: 12, bottom: 14),
                  child: Text(
                    'Our Paid Courses',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 22.0, right: 22, bottom: 14),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (buildContext, index) {
                      return Card(
                        shadowColor: Colors.grey,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Container(
                              // add margin to the container
                              width: 180,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                  image: paidCourseImage[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 22.0, right: 22, bottom: 14),
                              child: Text(
                                paidCourse[index],
                                style: const TextStyle(
                                    fontFamily: 'Biter',
                                    color: Color(0xffb5700a)),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Widget getListItem(Image image, String title, String name, int lessonNumber) {
    return Card(
      child: Row(
        children: [
          // TODO: Add image
          // Image(image: ''),
          Column(
            children: [
              Text(title),
              Text(name),
              Text('$lessonNumber lessons'),
            ],
          ),
        ],
      ),
    );
  }

  Widget getListView() {
    return ListView(
      children: [
        SizedBox(
          height: 200.0, // set the height of the container

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Center(
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/2532075/pexels-photo-2532075.jpeg?auto=compress&cs=tinysrgb&w=600',
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Yara Albadrsawi',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 30.0, bottom: 0, top: 0),
          dense: true,
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          title: Text(drawerTitles[0]),
          leading: icons[0],
        ),
        const Divider(
          thickness: 1,
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 30.0),
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          title: Text(drawerTitles[1]),
          leading: icons[1],
        ),
        const Divider(
          indent: 2,
          thickness: 1,
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 30.0),
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          title: Text(drawerTitles[2]),
          leading: icons[2],
        ),
        const Divider(
          thickness: 1,
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 30.0),
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          title: Text(drawerTitles[3]),
          leading: icons[3],
        ),
        const Divider(
          thickness: 1,
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 30.0),
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          title: Text(drawerTitles[4]),
          leading: icons[4],
        ),
        const Divider(
          thickness: 1,
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 30.0),
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          title: Text(drawerTitles[5]),
          leading: icons[5],
        ),
        const Divider(
          thickness: 1,
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 30.0),
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          title: Text(drawerTitles[6]),
          leading: icons[6],
        ),
        const Divider(
          thickness: 1,
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 30.0),
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          title: Text(drawerTitles[7]),
          leading: icons[7],
        ),
      ],
    );
  }
}
