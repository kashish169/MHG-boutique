import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    this.prefixWidget,
    this.hint,
    this.controller,
    required this.inputType,
    required this.obscure,
    this.validator,
    this.isPadding,
    this.onChanged,
    this.suffixIcon,
    this.disableForm,
    this.oneSideBorder,
    this.multiLine,
    this.readOnly,
  });

  final Widget? prefixWidget;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType inputType;
  final bool obscure;
  final String? Function(String?)? validator;
  final bool? isPadding;
  final Function(String)? onChanged;
  final Widget? suffixIcon;
  final bool? disableForm;
  final bool? oneSideBorder;
  final bool? multiLine;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        maxLines: multiLine != null ? 4 : 1,
        enabled: disableForm == null ? true : false,
        validator: validator,
        onChanged: onChanged,
        obscureText: obscure,
        keyboardType: inputType,
        controller: controller,
        readOnly: readOnly ?? false,
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: AppColors.label,
            ),
        decoration: InputDecoration(
          suffixIconConstraints:
              const BoxConstraints(minHeight: 15, minWidth: 15),
          contentPadding:
              oneSideBorder != null ? const EdgeInsets.all(12) : null,
          filled: true,
          hintStyle: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: AppColors.grey),
          hintText: hint,
          fillColor: const Color(0XFFF0F0F0),
          border: OutlineInputBorder(
            borderRadius: oneSideBorder != null
                ? const BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0))
                : const BorderRadius.all(Radius.circular(10.0)),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: AppColors.white),
          ),
          prefixIcon: prefixWidget,
          suffixIcon: suffixIcon,
        ));
  }
}
