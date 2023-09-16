import 'package:dotted_border/dotted_border.dart';
import 'package:dt_receipe/screens/add_recipe_title_widget.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddRecipeVideoWidget extends StatelessWidget {
  const AddRecipeVideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            title('Add Video', SvgPicture.asset('assets/images/add_video.svg')),
            Text(
              '(Optional)',
              style: textStyle.copyWith(
                  fontSize: 10,
                  color: ColorUtils.brownText,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(7),
            dashPattern: const [5, 5],
            color: ColorUtils.textGrey,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 183,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/upload_video.png',
                    width: 90,
                    height: 90,
                    fit: BoxFit.fill,
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Text(
                    'Upload Recipe Video',
                    style: textStyle.copyWith(
                        color: ColorUtils.grayShade8,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    'Video size 100 mb',
                    style: textStyle.copyWith(
                        color: const Color(0xffD9D9D9),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                ],
              ),
            )),
      ],
    );
  }
}
