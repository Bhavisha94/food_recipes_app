import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String? hintText;
  final Widget? prefixIcon;
  final FocusNode focusNode;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final int? maxLine;
  final TextInputType? keyboardType;
  final TextStyle? hintTextStyle;
  final bool obsecure;

  const TextFieldWidget(
      {super.key,
      this.width,
      this.height,
      this.hintText,
      this.prefixIcon,
      required this.focusNode,
      this.controller,
      this.onTap,
      this.maxLine,
      this.keyboardType,
      this.hintTextStyle,
      required this.obsecure});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // decoration: focusNode.hasFocus
      //     ? BoxDecoration(
      //         color: ColorUtils.bgColor,
      //         borderRadius: BorderRadius.circular(5),
      //         boxShadow: const [
      //           BoxShadow(
      //             color: Colors.grey,
      //             blurRadius: 5,
      //             offset: Offset(0, 5),
      //           ),
      //         ],
      //       )
      //     : null,
      width: width,
      height: height,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        focusNode: focusNode,
        onTap: onTap,
        maxLines: maxLine,
        obscureText: obsecure,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          hintStyle: hintTextStyle,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xffD3D3D3),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xffD3D3D3),
            ),
          ),
        ),
      ),
    );
  }
}
