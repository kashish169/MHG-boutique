import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    Key? key,
    required this.circleColor,
    required this.count,
    required this.onIncrease,
    required this.onDecrease,
    required this.loading,
    this.countColor = Colors.black,
    this.addIcon = const Icon(Icons.add_rounded),
    this.removeIcon = const Icon(Icons.remove_rounded),
    this.buttonColor = Colors.black,
    this.progressColor = Colors.black,
  }) : super(key: key);

  final Color circleColor;
  final int count;
  final Color countColor;
  final ValueChanged<int> onIncrease;
  final ValueChanged<int> onDecrease;
  final bool loading;
  final Color progressColor;
  final Color buttonColor;
  final Icon addIcon;
  final Icon removeIcon;

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (widget.loading)
              LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(widget.progressColor),
                backgroundColor: Colors.transparent,
                minHeight: 2,
              ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: widget.circleColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 18.0,
                  height: 18.0,
                  child: IconButton(
                    onPressed: widget.loading
                        ? null
                        : () {
                            widget.count == 1
                                ? null
                                : widget.onDecrease(widget.count - 1);
                          },
                    icon: widget.removeIcon,
                    padding: EdgeInsets.zero,
                    color: widget.buttonColor,
                    iconSize: 15,
                  ),
                ),
                const SizedBox(width: 5),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  layoutBuilder:
                      (Widget? currentChild, List<Widget> previousChildren) {
                    return currentChild!;
                  },
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    final Animation<Offset> inAnimation = Tween<Offset>(
                            begin: const Offset(1.0, 0.0), end: Offset.zero)
                        .animate(animation);
                    final Animation<Offset> outAnimation = Tween<Offset>(
                            begin: const Offset(-1.0, 0.0), end: Offset.zero)
                        .animate(animation);

                    if (child.key.toString() == widget.count.toString()) {
                      return ClipRect(
                        child: SlideTransition(
                            position: inAnimation, child: child),
                      );
                    } else {
                      return ClipRect(
                        child: SlideTransition(
                            position: outAnimation, child: child),
                      );
                    }
                  },
                  child: SizedBox(
                    key: Key(widget.count.toString()),
                    width: 32.0,
                    height: 32.0,
                    child: Center(
                      child: Text(
                        widget.count.toString(),
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: widget.countColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 18.0,
                  height: 18.0,
                  decoration: BoxDecoration(
                    color: widget.circleColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    onPressed: widget.loading
                        ? null
                        : () {
                            widget.onIncrease(widget.count + 1);
                          },
                    icon: widget.addIcon,
                    padding: EdgeInsets.zero,
                    color: widget.buttonColor,
                    iconSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
