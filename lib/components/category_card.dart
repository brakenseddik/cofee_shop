import 'package:cofee_shop/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItem extends StatefulWidget {
  bool isSelected ;
  final String? iconData;
  final String title;
  CategoryItem(
      {Key? key,
      required this.isSelected,
      required this.iconData,
      required this.title})
      : super(key: key);

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 4, left: 8, top: 4, bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        height: 50,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: !widget.isSelected
                  ? Colors.grey.withOpacity(0.3)
                  : Colors.transparent,
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          color: widget.isSelected ? AppTheme.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.iconData == null
                ? Container()
                : SvgPicture.asset(widget.iconData!,
                    height: 20,
                    color:
                        widget.isSelected ? AppTheme.whiteColor : Colors.black),
            Text(
              '  ' + widget.title,
              style: TextStyle(
                  color:
                      widget.isSelected ? AppTheme.whiteColor : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
