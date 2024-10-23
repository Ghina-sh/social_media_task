import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';
import 'package:social_media_task/presentation/resources/font_manger.dart';

class AppFormFiled extends StatelessWidget {
  final String label;
  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isMobile;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final bool isPassword;
  final TextEditingController? controller;
  final TextStyle? style;
  final bool isForRegister;
  final Color? fillColor;
  final void Function()? onTap;
  final bool withTapOutside;
  final EdgeInsetsGeometry? padding;
  final bool enabled;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final double? borderRadius;
  final bool withShadow;
  final Color? borderColor;
  final double? borderWidth;

  const AppFormFiled({
    this.label = '',
    this.controller,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.isMobile = false,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.isPassword = false,
    this.isForRegister = false,
    this.style,
    this.fillColor,
    this.onTap,
    this.withTapOutside = false,
    this.padding,
    this.enabled = true,
    this.hintStyle,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.borderRadius,
    this.withShadow = true,
    this.borderColor,
    this.borderWidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isNotEmpty) ...[
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: AppSize.s18(context),
                  color: isForRegister ? ColorManager.black : null,
                ),
          ),
          10.verticalSpace()
        ],
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: style ??
              Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontSize: AppSize.s16(context),
                    height: 2,
                  ),
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          validator: validator,
          enabled: enabled,
          controller: controller,
          onTap: onTap,
          onTapOutside: withTapOutside
              ? (event) => FocusScope.of(context).unfocus()
              : null,
          inputFormatters: isMobile
              ? <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ]
              : <TextInputFormatter>[],
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          obscureText: isPassword,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: borderWidth ?? 0,
                  color: borderColor ?? Colors.transparent),
              borderRadius: BorderRadius.circular(borderRadius ?? 30),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: borderWidth ?? 0,
                  color: borderColor ?? Colors.transparent),
              borderRadius: BorderRadius.circular(borderRadius ?? 30),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: borderWidth ?? 0,
                  color: borderColor ?? Colors.transparent),
              borderRadius: BorderRadius.circular(borderRadius ?? 30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: borderWidth ?? 0,
                  color: borderColor ?? Colors.transparent),
              borderRadius: BorderRadius.circular(borderRadius ?? 30),
            ),
            hintText: hint,
            hintStyle: hintStyle,
            filled: true,
            fillColor: fillColor,
            contentPadding: padding,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.red,
                  fontSize: AppSize.s13(context),
                ),
            errorMaxLines: 2,
          ),
        )
      ],
    );
  }
}
