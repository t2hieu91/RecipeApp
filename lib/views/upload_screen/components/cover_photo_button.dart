import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

import '../../../constants.dart';

class CoverPhotoButton extends StatelessWidget {
  const CoverPhotoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(18),
      strokeWidth: 2,
      dashPattern: [8, 4],
      color: kOutlineColor,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: TextButton(
          onPressed: () {},
          child: Container(
            height: 165,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: kDefaultPadding),
                Image.asset(
                  "assets/icons/ic_upload_image_add.png",
                  height: 70,
                  width: 70,
                ),
                SizedBox(height: kDefaultPadding),
                Text(
                  "Add Cover Photo",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(height: kDefaultPadding / 2),
                Text(
                  "(Up to 12 Mb)",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
