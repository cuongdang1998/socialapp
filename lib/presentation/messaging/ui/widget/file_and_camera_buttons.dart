import 'package:flutter/material.dart';
import 'package:social_app/config/colors.dart';

class FileAndCameraButtons extends StatelessWidget {
  const FileAndCameraButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            Icons.attach_file,
            color: AppColor().greyColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.camera_alt,
            color: AppColor().greyColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
