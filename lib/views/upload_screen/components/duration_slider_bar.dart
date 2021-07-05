import 'package:flutter/material.dart';
import '../../../constants.dart';

class DurationSliderBar extends StatefulWidget {
  @override
  _DurationSliderBarState createState() => _DurationSliderBarState();
}

class _DurationSliderBarState extends State<DurationSliderBar> {
  double valueDuration = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "  <10",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "30",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ">60  ",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 5,
              overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
            ),
            child: Slider(
              min: 0,
              max: 60,
              divisions: 2,
              value: valueDuration,
              onChanged: (newValue) {
                setState(() {
                  valueDuration = newValue;
                });
              },
              activeColor: kPrimaryColor,
              inactiveColor: kOutlineColor,
              label: "${valueDuration.toInt()}",
            ),
          ),
        ],
      ),
    );
  }
}
