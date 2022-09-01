import 'package:flutter/material.dart';

class MovieListEmpty extends StatelessWidget {
  const MovieListEmpty({Key? key, required this.refresh}) : super(key: key);
  final void Function() refresh;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'No movies found!',
            style: textTheme.caption,
          ),
          const SizedBox(
            height: 4.0,
          ),
          ElevatedButton(
              onPressed: refresh,
              child: const Text(
                'Refresh',
              )),
        ],
      ),
    );
  }
}
