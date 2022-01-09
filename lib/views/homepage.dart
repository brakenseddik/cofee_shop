import 'package:cofee_shop/components/categories.dart';
import 'package:cofee_shop/components/home_header.dart';
import 'package:cofee_shop/components/product_card.dart';
import 'package:cofee_shop/components/search_bar.dart';
import 'package:cofee_shop/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.primaryColor,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/home-svgrepo-com.svg',
                color: AppTheme.primaryColor,
                height: 28,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/favourite-svgrepo-com.svg',
                height: 28,
              ),
              label: 'Favourite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/bag-outline-svgrepo-com.svg',
                height: 28,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/profile-svgrepo-com.svg',
                height: 28,
              ),
              label: 'Profile'),
        ],
      ),
      body: ListView(
        children: [
          const Header(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Text(
              'Good Morning, David ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
          ),
          const SearchBar(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Text(
              'Categories',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          Categories(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductCard(),
                ProductCard(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Text(
              'Special Offer',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 24),
            ),
          ),
          Container(
            height: 125,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: const Offset(3, 5),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  width: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1521495037281-9487183110ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNhcHB1Y2lub3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'))),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppTheme.secondaryColor.withOpacity(.7),
                        ),
                        child: const Text(
                          'Discover',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Get three cups of tea for free when you register.',
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
