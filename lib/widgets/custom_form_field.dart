import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mhg/constants/app_colors.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    this.prefixWidget,
    this.hint,
    this.controller,
    this.inputType,
    required this.obscure,
    this.validator,
    this.isPadding,
    this.onChanged,
    this.suffixIcon,
    this.disableForm,
    this.oneSideBorder,
    this.multiLine,
    this.readOnly,
    this.isFilled,
    this.isAlignCenter,
    this.onTap,
    this.onTapOutsidel,
    this.onFieldSubmitted,
    this.isFileWhite,
    this.inputFormatters,
    this.isPromo,
  });

  final Widget? prefixWidget;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final bool obscure;
  final String? Function(String?)? validator;
  final bool? isPadding;
  final Function(String)? onChanged;
  final Widget? suffixIcon;
  final bool? disableForm;
  final bool? oneSideBorder;
  final bool? multiLine;
  final bool? readOnly;
  final bool? isFilled;
  final bool? isAlignCenter;
  final void Function()? onTap;
  final Function(String)? onFieldSubmitted;
  final void Function(PointerDownEvent)? onTapOutsidel;
  final bool? isFileWhite;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isPromo;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        maxLines: multiLine != null ? 4 : 1,
        enabled: disableForm == null ? true : false,
        validator: validator,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        obscureText: obscure,
        keyboardType: inputType,
        controller: controller,
        onTap: onTap,
        inputFormatters: inputFormatters,
        onTapOutside: onTapOutsidel,
        textAlign: isAlignCenter != null ? TextAlign.center : TextAlign.start,
        readOnly: readOnly ?? false,
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: AppColors.label,
            ),
        decoration: InputDecoration(
          errorMaxLines: 3,
          suffixIconConstraints:
              const BoxConstraints(minHeight: 15, minWidth: 15),
          contentPadding:
              oneSideBorder != null ? const EdgeInsets.all(12) : null,
          filled: readOnly == null ? true : false,
          hintStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: isPromo != null
                  ? AppColors.label
                  : isFilled == null
                      ? AppColors.grey
                      : AppColors.black3),
          hintText: hint,
          fillColor:
              isFileWhite == null ? const Color(0XFFF0F0F0) : AppColors.white,
          border: readOnly == null
              ? OutlineInputBorder(
                  borderRadius: oneSideBorder != null
                      ? const BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0))
                      : const BorderRadius.all(Radius.circular(10.0)),
                  borderSide: const BorderSide(color: Colors.white),
                )
              : readOnly == false
                  ? OutlineInputBorder(
                      borderRadius: oneSideBorder != null
                          ? const BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0))
                          : const BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: AppColors.lightGray3),
                    )
                  : UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.lightGray3, width: 1)),
          enabledBorder: readOnly == null
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: AppColors.lightGray3),
                )
              : readOnly == false
                  ? OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: AppColors.lightGray3),
                    )
                  : UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.lightGray3, width: 1)),
          disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: AppColors.lightGray3,
            width: isFileWhite == null ? 1 : 0,
          )),
          focusedBorder: readOnly == null
              ? OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: AppColors.label, width: 2),
                )
              : readOnly == false
                  ? OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: AppColors.label, width: 2),
                    )
                  : UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.lightGray3,
                          width: isFileWhite == null ? 1 : 0)),
          prefixIcon: prefixWidget,
          suffixIcon: suffixIcon,
        ));
  }
}
