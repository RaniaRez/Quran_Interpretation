import '../../../core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../core/const.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown(
      {super.key,
      this.data,
      this.mapKey,
      required this.items,
      this.isExpanded = false,
      this.hintText});
  final Map<String, dynamic>? data;
  final String? mapKey;
  final Map<String, dynamic> items;
  final bool isExpanded;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: items.entries
          .map((e) => DropdownMenuItem(
                value: e.key,
                child: Text(
                  e.value,
                  style: context.textTheme.bodyMedium!.copyWith(
                    color: textSecondary,
                  ),
                ),
              ))
          .toList(),
      onChanged: (newValue) => data![mapKey!] = newValue!,
      isExpanded: isExpanded,
      elevation: 0,
      dropdownColor: kPrimary.shade100,
      icon: Icon(
        LucideIcons.chevronDown,
        size: kSpacingX1,
      ),
      iconDisabledColor: textSecondary,
      iconEnabledColor: kPrimary,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.sp,
          vertical: 14.sp,
        ),
        hintText: hintText,
        hintStyle: context.textTheme.bodyMedium!.copyWith(
          color: textSecondary,
        ),
      ),
    );
  }
}
