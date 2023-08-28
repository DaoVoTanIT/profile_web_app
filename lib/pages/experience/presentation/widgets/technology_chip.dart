import 'package:flutter/material.dart';

class TechnologyChip extends StatelessWidget {
  final String name;
  final String url;
  const TechnologyChip({Key? key, required this.name, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: IgnorePointer(
        child: Chip(
          avatar: Image.asset(
            url,
          ),
          label: Text(name),
          //backgroundColor: Theme.of(context).colorScheme.onSecondary,
          side: BorderSide.none,
        ),
      ),
    );
  }
}
