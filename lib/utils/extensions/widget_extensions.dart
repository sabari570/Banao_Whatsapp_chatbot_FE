import 'package:flutter/material.dart';

extension AnythingExtension on Widget {
  Container wrapInContainer() => Container(
        child: this,
      );
}

extension CustomExtensions on Widget {
  Center wrapCenter() => Center(child: this);
  Padding paddingForAll(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Padding paddingWithSymmetry(
          {double vertical = 0.0, double horizontal = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  Padding paddingLTRB(double left, double top, double right, double bottom) =>
      Padding(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  Padding paddingForOnly(
          {double left = 0.0,
          double right = 0.0,
          double top = 0.0,
          double bottom = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.only(left: left, right: right, bottom: bottom, top: top),
        child: this,
      );

  Expanded expanded({required int flex}) => Expanded(flex: flex, child: this);

  Container forBackgroundColor({Color? color}) => Container(
        color: color,
        child: this,
      );

  Container withShadow({required double radius, Color? color}) => Container(
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(radius),
          /*boxShadow: [
        BoxShadow(offset: Offset(0, 1), blurRadius: 10, color: CustomColors.greyShadow),
      ],*/
        ),
        child: this,
      );

  InkWell asButton({
    void Function()? onTap,
    void Function()? onLongPress,
  }) =>
      InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: this,
      );

  GestureDetector asStaticButton({
    void Function()? onTap,
    void Function()? onLongPress,
  }) =>
      GestureDetector(
        onTap: onTap,
        onLongPress: onLongPress,
        child: this,
      );

  Material asCircleButton({required VoidCallback onTap}) => Material(
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onTap,
          child: this,
        ),
      );

  Widget addSubScript(Widget widget, {MainAxisAlignment? mainAxisAlignment}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        this,
        widget,
      ],
    );
  }
}
