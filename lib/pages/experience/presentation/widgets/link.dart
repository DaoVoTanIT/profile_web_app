import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/utils/sizes.dart';

import 'package:url_launcher/url_launcher.dart';

class LinkWidget extends ConsumerStatefulWidget {
  const LinkWidget({
    Key? key,
    required this.url,
    this.displayLink,
    this.displayLeadingIcon = false,
    this.underlined = false,
    this.hoverColor,
  }) : super(key: key);

  final String url;
  final String? displayLink;
  final bool displayLeadingIcon;
  final bool underlined;
  final Color? hoverColor;

  @override
  ConsumerState<LinkWidget> createState() => _LinkWidgetsState();
}

class _LinkWidgetsState extends ConsumerState<LinkWidget> {
  TextStyle? _linkStyle;

  @override
  void didChangeDependencies() {
    _linkStyle = TextStyle(
      decoration: widget.underlined ? TextDecoration.underline : null,
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (_) {
        setState(() {
          _linkStyle = TextStyle(
            decoration: widget.underlined ? TextDecoration.underline : null,
            color: widget.hoverColor ?? Colors.blue,
          );
        });
      },
      onExit: (_) {
        setState(() {
          _linkStyle = TextStyle(
            decoration: widget.underlined ? TextDecoration.underline : null,
          );
        });
      },
      child: GestureDetector(
        onTap: () async {
          if (!await launchUrl(Uri.parse(widget.url))) {
            if (!mounted) return;
            final snackBar = SnackBar(
              content: Text("${tr('openUrlError'.tr())} ${widget.url}"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.displayLeadingIcon)
              Row(
                children: [
                  Icon(
                    Icons.link,
                    color: _linkStyle?.color,
                  ),
                  gapW4,
                ],
              ),
            Flexible(
              child: Text(
                widget.displayLink ?? widget.url,
                style: _linkStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
