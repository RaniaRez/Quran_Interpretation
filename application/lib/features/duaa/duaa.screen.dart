import 'package:app/core/extension.dart';
import 'package:app/features/duaa/logic/duaa/duaa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/const.dart';
import '../../shared/widgets/loading/loader.widget.dart';
import 'widgets/duaa.card.widget.dart';

class DuaaScreen extends StatelessWidget {
  const DuaaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kSpacingX2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "duaa:duaa".translate(context),
              style: context.textTheme.headlineLarge,
            ),
            SizedBox(height: kSpacingX1),
            Text("duaa:description".translate(context),
                style: context.textTheme.bodyMedium),
            SizedBox(height: kSpacingX2),
            Expanded(
              child: BlocBuilder<DuaaCubit, DuaaState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => Container(),
                    failure: (message) => Center(child: Text(message)),
                    loading: () => Center(child: Loader(size: 25.sp)),
                    loaded: (duaas, total, page, hasReachedMax) {
                      if (duaas.isEmpty) {
                        return Center(
                            child:
                                Text("appointments:empty".translate(context)));
                      }
                      return ListView.separated(
                        shrinkWrap: true,
                        itemCount: duaas.length,
                        separatorBuilder: (context, index) =>
                            Divider(height: kSpacingX3),
                        itemBuilder: (context, index) {
                          return DuaaCard(
                            duaa: duaas[index],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
