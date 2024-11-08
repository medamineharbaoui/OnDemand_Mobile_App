import 'dart:async';
import 'package:flutter/material.dart';

import 'package:homejek_app/pages/notification//src/bulletin_item.dart';

class Bulletin extends StatefulWidget {
  /// Bulletin
  const Bulletin({
    Key? key,
    this.children = const [],
    this.icon,
    this.textStyle,
    this.bulletinWidth,
    this.bulletinHeight,
    this.backgroundColor = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(9)),
    this.gapDuration = const Duration(seconds: 3),
    this.animationDuration = const Duration(milliseconds: 50),
    this.curve = Curves.easeIn,
    this.showCloseButton = true,
    //this.closeButton,
    this.onCloseIconColor = Colors.white,
    this.onCloseBackGroundColor = Colors.black,
    this.onClose,
  }) : super(key: key);

  /// The List of BulletinItems.
  final List<BulletinItem> children;

  /// The const icon for the bulletin.
  /// If this is null, the icon property of bulletin item will be used.
  final Widget? icon;

  /// The default text styles for all the bulletins
  final TextStyle? textStyle;

  /// The background color of the bulletin.
  final Color backgroundColor;

  /// The height of the bulletin.
  final double? bulletinHeight;

  /// The width of the bulletin.
  final double? bulletinWidth;

  /// The border radius of the bulletin.
  final BorderRadius borderRadius;

  /// The duration of the animation.
  final Duration animationDuration;

  /// The duraion of the gap between the bulletins.
  final Duration gapDuration;

  /// Fade in curve. Defaults to [Curves.easeIn].
  final Curve curve;

  /// Toggle showing the close button.
  final bool showCloseButton;

  /// The onCloseButton Widget
  //final Widget? closeButton;

  /// The onClose Button icon Color
  final Color onCloseIconColor;

  /// The onClose Button background Color
  final Color onCloseBackGroundColor;

  /// The callback when the bulletin is closed.
  final VoidCallback? onClose;

  @override
  State<Bulletin> createState() => _BulletinState();
}

class _BulletinState extends State<Bulletin> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final ValueNotifier<int> index;
  late final ValueNotifier<bool> isClosed;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    index = ValueNotifier<int>(0);
    isClosed = ValueNotifier<bool>(false);
    _setupCurve();

  }

  void _setupCurve() {
    final curve = CurvedAnimation(
      parent: _controller,
      curve: widget.curve,
    );


  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    index.dispose();
    isClosed.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Getting the width and height of the screen size of the device to calculate the size of the bulletin.
    final double _screenWidth = MediaQuery.of(context).size.width;
    final double _screenHeight = MediaQuery.of(context).size.height;

    // Calculating the width and height of the bulletin if the user has defined some values.
    final double _height = widget.bulletinHeight ?? _screenHeight;
    final double _width = widget.bulletinWidth ?? _screenWidth;

    return ValueListenableBuilder<bool>(
      valueListenable: isClosed,
      builder: (context, snapshot, child) {
        if (snapshot) {
          return const SizedBox.shrink();
        }
        return Stack(
          children: [
            // The main body of the bulletin widget.
            bulletinBody(_width, _height, _screenWidth, _screenHeight),
            //Only show the close button if the user wants to show it.
            if (widget.showCloseButton)
              //Close button which is located at the top right corner of the bulletin widget.
              closeButton(),
          ],
        );
      },
    );
  }

  Positioned closeButton() {
    return Positioned(
      right: 12,
      top: 2,
      child: GestureDetector(


        onTap: widget.onClose ??
            () {
              isClosed.value = true;
            },
      ),
    );
  }

  GestureDetector bulletinBody(double _width, double _height,
      double _screenWidth, double _screenHeight) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: _width * 0.05,
          vertical: _height * 0.01,
        ),
        padding: EdgeInsets.only(
          left: _width * 0.05,
          right: _width * 0.05,
          top: _height * 0.015,
          bottom: _height * 0.015,
        ),
        child: ValueListenableBuilder<int>(
          valueListenable: index,
          builder: (context, snapshot, child) {
            return GestureDetector(
              child: Row(
                children: [
                  widget.icon ??
                      widget.children[snapshot].icon ??
                      const SizedBox.shrink(),
                  SizedBox(width: _screenWidth * 0.05),
                  SizedBox(
                    width: _screenWidth * 0.6,
                    child: FadeTransition(
                      opacity: _controller,
                      child: Text(
                        widget.children[snapshot].text,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: widget.textStyle ??
                            widget.children[snapshot].textStyle ??
                            TextStyle(
                              fontSize: _screenHeight * 0.015,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              onTap: widget.children[snapshot].onTap,
            );
          },
        ),
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: widget.borderRadius,
        ),
      ),
    );
  }




}
