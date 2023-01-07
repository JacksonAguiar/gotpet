import 'package:flutter/material.dart';

class ProgressIndicatorStepWidget extends StatelessWidget {
  const ProgressIndicatorStepWidget({
    Key? key,
    required this.current,
    required this.max,
  }) : super(key: key);
  final double current;
  final double max;
  final double height = 12;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: LayoutBuilder(
          builder: (_, boxConstraints) {
            var x = boxConstraints.maxWidth;
            var percent = (current / max) * x;
            return Stack(
              children: [
                Container(
                  width: x,
                  height: height,
                  decoration: BoxDecoration(
                    color: const Color(0xffEEEEEE),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: percent,
                  height: height,
                  decoration: BoxDecoration(
                    color: const Color(0xff12D18E),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
