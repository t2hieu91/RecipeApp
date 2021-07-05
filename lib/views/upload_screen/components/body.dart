import 'package:flutter/material.dart';
import 'package:recipe_app/components/default_button.dart';
import '../../../constants.dart';
import './header_bar.dart';
import './cover_photo_button.dart';
import './enter_food_name_text_field.dart';
import './description_text_field.dart';
import './title_duration.dart';
import './duration_slider_bar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderBar(),
              CoverPhotoButton(),
              SizedBox(height: kDefaultPadding * 1.5),
              Text(
                "Food Name",
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: kDefaultPadding * 0.75),
              EnterFoodNameTextField(),
              SizedBox(height: kDefaultPadding * 1.5),
              Text(
                "Description",
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: kDefaultPadding * 0.75),
              DescriptionTextField(),
              SizedBox(height: kDefaultPadding * 1.5),
              TitleDuration(),
              SizedBox(height: kDefaultPadding * 0.75),
              DurationSliderBar(),
              SizedBox(height: kDefaultPadding * 2),
              DefaultButton(title: "Next", onPress: () {}),
              SizedBox(height: kDefaultPadding * 3),
            ],
          ),
        ),
      ),
    );
  }
}
