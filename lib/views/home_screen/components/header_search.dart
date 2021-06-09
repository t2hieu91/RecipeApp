import 'package:flutter/material.dart';
import '../../../constants.dart';

class HeaderSearch extends StatelessWidget {
  const HeaderSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          fillColor: kFormColor,
          filled: true,
          hintText: "Search",
          prefixIcon: Icon(
            Icons.search,
            color: kTextColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
