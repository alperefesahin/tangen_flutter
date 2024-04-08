import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_text.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_white_box.dart';

class DetailsButtonRowWidget extends StatelessWidget {
  const DetailsButtonRowWidget({
    Key? key,
    required this.isThereMoreThanOneWidget,
    this.text,
    this.textList = const [],
  }) : super(key: key);

  final String? text;
  final bool isThereMoreThanOneWidget;
  final List<String> textList;

  @override
  Widget build(BuildContext context) {
    if (!isThereMoreThanOneWidget) {
      return TangenWhiteBox(
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: TangenText(
                text: text!,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
                color: greyText.withOpacity(0.75),
              ),
            ),
          ],
        ),
      );
    } else {
      return TangenWhiteBox(
        widget: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int index = 0; index < textList.length; index++)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: TangenText(
                            text: textList[index],
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 14,
                            color: greyText.withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                    if (index != textList.length - 1)
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Divider(
                          thickness: 0.5,
                          color: buttonBgGrey,
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
}
