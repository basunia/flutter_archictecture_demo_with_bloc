import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MovieDetailError extends StatelessWidget {
  const MovieDetailError({Key? key, required this.onRefresh}) : super(key: key);

  final void Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('🙈', style: TextStyle(fontSize: 48)),
        Center(
          child: Text(
            'erorr_message',
            style: theme.textTheme.bodyMedium,
          ).tr(),
        ),
        const SizedBox(
          height: 8.0,
        ),
        OutlinedButton(
            onPressed: onRefresh, child: const Text('back_to_home').tr()),
      ],
    );
  }
}