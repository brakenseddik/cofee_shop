import 'package:cofee_shop/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0, left: 20),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              size: 24,
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: AppTheme.secondaryColor,
                child: SvgPicture.asset(
                  'assets/filter.svg',
                  height: 24,
                  color: AppTheme.whiteColor,
                ),
              ),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            enabledBorder:const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            fillColor: const Color(0xFFF5F5F5)),
      ),
    );
  }
}
