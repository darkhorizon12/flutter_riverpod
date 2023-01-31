import 'package:flutter_riverpod/flutter_riverpod.dart';

final multifulFutureProvider = FutureProvider<List<int>>((ref) async {
  await Future.delayed(
    Duration(
      seconds: 2,
    ),
  );

  return [0, 1, 2, 3, 4, 5, 6, 7, 8, 9,];
});
