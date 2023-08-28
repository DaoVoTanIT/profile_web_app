import 'package:flutter/material.dart';
import 'package:my_portfolio/models/technology.dart';
import 'package:my_portfolio/utils/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  final double percentage;
  final String title;
  final String? image;

  const AnimatedLinearProgressIndicator(
      {Key? key, required this.percentage, required this.title, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, double value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    image!,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(),
                  ),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              LinearProgressIndicator(
                minHeight: 10,
                value: value,
                backgroundColor: Colors.black,
                color: contentColorYellow,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          title: TechnologyConstants.flutter.name,
          image: TechnologyConstants.flutter.logo,
        ),
        AnimatedLinearProgressIndicator(
            percentage: 0.9,
            title: TechnologyConstants.dart.name,
            image: TechnologyConstants.dart.logo),
        AnimatedLinearProgressIndicator(
            percentage: 0.7,
            title: TechnologyConstants.firebase.name,
            image: TechnologyConstants.firebase.logo),
        AnimatedLinearProgressIndicator(
            percentage: 0.85,
            title: TechnologyConstants.sql.name,
            image: TechnologyConstants.sql.logo),
        AnimatedLinearProgressIndicator(
            percentage: 0.8,
            title: TechnologyConstants.bloc.name,
            image: TechnologyConstants.bloc.logo),
        AnimatedLinearProgressIndicator(
            percentage: 0.6,
            title: TechnologyConstants.getX.name,
            image: TechnologyConstants.getX.logo),
      ],
    );
  }
}
