import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Home(title: 'Home');
  }
}

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Array of feed items with image URLs, titles, descriptions, and users
  final List<Map<String, String>> feedItems = [
    {
      'image': 'https://images.pexels.com/photos/1191109/pexels-photo-1191109.jpeg?auto=compress&cs=tinysrgb&w=1200',
      'title': 'Bikes',
      'description': 'Rent a mountain bike for your Nairobi adventures.',
      'user': 'Ian Brian Otieno',
    },
    {
      'image': 'https://images.pexels.com/photos/1042143/pexels-photo-1042143.jpeg?auto=compress&cs=tinysrgb&w=1200',
      'title': 'Mobile',
      'description': 'Get the latest smartphones for short-term use.',
      'user': 'Otieno Omondi',
    },
    {
      'image': 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg?auto=compress&cs=tinysrgb&w=1200',
      'title': 'Cars',
      'description': 'Drive a reliable car for your city or safari trips.',
      'user': 'Jane Doe',
    },
    {
      'image': 'https://images.pexels.com/photos/792345/pexels-photo-792345.jpeg?auto=compress&cs=tinysrgb&w=1200',
      'title': 'Electronics',
      'description': 'Rent high-quality electronics for work or play.',
      'user': 'John Smith',
    },
    {
      'image': 'https://images.pexels.com/photos/336372/pexels-photo-336372.jpeg?auto=compress&cs=tinysrgb&w=1200',
      'title': 'Fashion',
      'description': 'Stay stylish with trendy outfits for any occasion.',
      'user': 'John Paul',
    },
    {
      'image': 'https://media.istockphoto.com/id/1460007178/photo/library-books-on-table-and-background-for-studying-learning-and-research-in-education-school.jpg?b=1&s=612x612&w=0&k=20&c=MVxSlUIASeNYDHm7MuYnLLZzu3Edx_onlyG3sSLWFGc=',
      'title': 'Books',
      'description': 'Explore a wide range of books for rent.',
      'user': 'Mary Johnson',
    },
    {
      'image': 'https://media.istockphoto.com/id/949190756/photo/various-sport-equipments-on-grass.jpg?b=1&s=612x612&w=0&k=20&c=Si6Ms85w926YDZqaifSA8O3FHFLy4uDUEAcjoqIXnfY=',
      'title': 'Sports',
      'description': 'Gear up with sports equipment for your activities.',
      'user': 'Philip Mwangi',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 120,
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        print('Location tapped');
                      },
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Your Location',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.location_on, color: Colors.grey, size: 15),
                                SizedBox(width: 10),
                                Text(
                                  'Nairobi, Kenya',
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.keyboard_arrow_down),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Icon(Icons.notifications, color: Colors.grey, size: 30),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200],
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            "Categories",
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("See All"),
                        ],
                      ),
                      Container(
                        height: 100,
                        padding: const EdgeInsets.only(top: 20),
                        child: ScrollConfiguration(
                          behavior: ListViewBehaviour(),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: <Widget>[
                              makeCategory(catImage: 'assets/category/bike.png', title: 'Bikes'),
                              makeCategory(catImage: 'assets/category/mobile.png', title: 'Mobile'),
                              makeCategory(catImage: 'assets/category/cars.png', title: 'Cars'),
                              makeCategory(catImage: 'assets/category/electronics.png', title: 'Electronics'),
                              makeCategory(catImage: 'assets/category/fashion.png', title: 'Fashion'),
                              makeCategory(catImage: 'assets/category/books.png', title: 'Books'),
                              makeCategory(catImage: 'assets/category/sports.png', title: 'Sports'),
                              makeCategory(catImage: 'assets/category/bike.png', title: 'Bikes'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: ScrollConfiguration(
                          behavior:ListViewBehaviour(),
                          child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: feedItems.length,
                            itemBuilder: (context, index) {
                              return makeFeed(
                                catImage: feedItems[index]['image']!,
                                title: feedItems[index]['title']!,
                                description: feedItems[index]['description']!,
                                user: feedItems[index]['user']!,
                              );
                            },
                            separatorBuilder: (context, index) => const SizedBox(
                              height: 2,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCategory({required String catImage, required String title}) {
    return AspectRatio(
      aspectRatio: 1 / 0.8,
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(right: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(catImage),
            fit: BoxFit.fitWidth,
            onError: (exception, stackTrace) => const Icon(Icons.error),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.blue.withOpacity(0.1),
                Colors.blue.withOpacity(0.1),
              ],
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Widget makeFeed({
    required String catImage,
    required String title,
    required String description,
    required String user,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 5, top: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            height: 100,
            width: 150, // Reduced to prevent overflow
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                catImage,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, size: 50),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Posted by $user',
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}