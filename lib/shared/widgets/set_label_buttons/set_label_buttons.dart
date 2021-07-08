import 'package:flutter/material.dart';
import 'package:nlw/shared/themes/app_colors.dart';
import 'package:nlw/shared/themes/app_text_styles.dart';

import 'package:nlw/shared/widgets/divider/divider_vertical_widget.dart';
import 'package:nlw/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondLabel;
  final VoidCallback secondOnPressed;
  final bool enablePrimaryColor;
  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondLabel,
    required this.secondOnPressed,
    this.enablePrimaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shape,
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryOnPressed,
              style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
            ),
          ),
          DividerVerticalWidget(),
          Expanded(
            child: LabelButton(
              label: secondLabel,
              onPressed: secondOnPressed,
            ),
          ),
        ],
      ),
    );
  }
}
