import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 3.0,
      shadowColor: Colors.black26,
      title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: const Color(0XFFF0F0F1),
          ),
          child: Row(
            children: const [
              Icon(
                Icons.search,
                color: Color(0XFF424750),
              ),
              SizedBox(width: 12.0),
              Text(
                'جست و جو در',
                style: TextStyle(
                  color: Color(0XFF62666d),
                ),
              ),
              SizedBox(width: 4.0),
              SvgPicture.network(
                  "https://www.digikala.com/statics/img/svg/digi.svg")
            ],
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
