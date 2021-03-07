import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rc_app/home/home_item.dart';
import 'package:rc_app/home/notifikasi_item.dart';
import 'package:rc_app/home/pinjaman_item.dart';
import 'package:rc_app/home/profile_item.dart';
import 'package:rc_app/models/berita_model.dart';
import 'package:rc_app/themes/color_style.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  int selected = 0;

  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selected);
  }

  List<BottomNavigationBarItem> bottomNavItem = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(
        icon: Icon(Icons.compare_arrows_rounded), label: 'Pinjaman'),
    BottomNavigationBarItem(
        icon: Icon(Icons.notifications_rounded), label: 'Notifikasi'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
  ];

  List<Widget> pages = [
    HomeItem(),
    PinjamanItem(),
    NotifikasiItem(),
    ProfileItem()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavItem,
          type: BottomNavigationBarType.fixed,
          currentIndex: selected,
          selectedItemColor: warnaKu.ungu,
          showUnselectedLabels: true,
          unselectedItemColor: warnaKu.shadowGoogleColor,
          onTap: (value) {
            setState(() {
              selected = value;
              pageController.jumpToPage(selected);
            });
          },
        ),
        body: PageView(
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (value) {
            setState(() {
              selected = value;
            });
          },
          children: pages,
        ));
  }

  Widget carouselBerita() {
    return Column(children: [
      CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.4,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: beritaku.map((berita) {
          int index = beritaku.indexOf(berita);
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.bounceInOut,
            width: _current == index ? 20.0 : 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: _current == index
                  ? warnaKu.yellow
                  : warnaKu.shadowGoogleColor,
            ),
          );
        }).toList(),
      ),
    ]);
  }

  final List<Widget> imageSliders = beritaku
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(item.asset,
                      fit: BoxFit.cover, width: 1000.0)),
            ),
          ))
      .toList();
  Widget topBar() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(child: searchBox()),
          SizedBox(
            width: 16,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey.withOpacity(.2),
              )
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'http://amikom.ac.id/public/fotomhs/2017/17_11_1385.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 2),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 10,
          color: Colors.grey.withOpacity(.2),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Cari apapun disini',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
