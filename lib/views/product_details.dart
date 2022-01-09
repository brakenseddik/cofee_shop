import 'package:cofee_shop/components/categories.dart';
import 'package:cofee_shop/components/category_card.dart';
import 'package:cofee_shop/theme.dart';
import 'package:cofee_shop/views/splash_screen.dart';
import 'package:flutter/material.dart';

class ProducDetailsScreen extends StatefulWidget {
  const ProducDetailsScreen({Key? key}) : super(key: key);

  @override
  _ProducDetailsScreenState createState() => _ProducDetailsScreenState();
}

class _ProducDetailsScreenState extends State<ProducDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.network(
            'https://media.istockphoto.com/photos/cup-of-cafe-latte-with-coffee-beans-and-cinnamon-sticks-picture-id505168330?b=1&k=20&m=505168330&s=170667a&w=0&h=jJTePtpYZLR3M2OULX5yoARW7deTuAUlwpAoS4OriJg=',
            height: MediaQuery.of(context).size.height * 0.8,
            width: double.infinity,
            fit: BoxFit.cover),
        DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.5,
            maxChildSize: 0.8,
            builder: (context, controller) {
              return Container(
                child: ListView(
                  controller: controller,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: 30,
                      ),
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('Coffee',
                              style: TextStyle(
                                  color: AppTheme.darkColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                          SizedBox(
                            height: 40,
                            child: VerticalDivider(
                              color: Colors.black45,
                            ),
                          ),
                          Text('Chocolate',
                              style: TextStyle(
                                  color: AppTheme.darkColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                          SizedBox(
                            height: 40,
                            child: VerticalDivider(
                              color: Colors.black45,
                            ),
                          ),
                          Text('Milk',
                              style: TextStyle(
                                  color: AppTheme.darkColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0, top: 20, bottom: 10),
                      child: Text("Coffee size",
                          style: TextStyle(
                              color: AppTheme.darkColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 22)),
                    ),
                    Container(
                      height: 60,
                      margin: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: CategoryItem(
                                isSelected: true,
                                iconData: null,
                                title: "Small"),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: CategoryItem(
                                isSelected: false,
                                iconData: null,
                                title: "Medium"),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: CategoryItem(
                                isSelected: false,
                                iconData: null,
                                title: "Large"),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 30.0,
                        top: 10,
                      ),
                      child: Text("About",
                          style: TextStyle(
                              color: AppTheme.darkColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 22)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 30.0, top: 10, bottom: 10, right: 30),
                      child: Text(
                          "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: AppTheme.darkColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      alignment: Alignment.center,
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppTheme.primaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Add to cart     ',
                              style: TextStyle(
                                  color: AppTheme.whiteColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18)),
                          SizedBox(
                              height: 20,
                              child: VerticalDivider(
                                color: Colors.white,
                              )),
                          Text('    \$ 14',
                              style: TextStyle(
                                  color: AppTheme.whiteColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: AppTheme.whiteColor,
                    borderRadius: BorderRadius.circular(25)),
              );
            }),
        const Positioned(
            top: 25,
            right: 15,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
            )),
        const Positioned(
            top: 25,
            left: 15,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ))
      ]),
    );
  }
}
