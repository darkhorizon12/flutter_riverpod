import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_status/layout/default_layout.dart';
import 'package:flutter_status/riverpod/future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<int>> state = ref.watch(multifulFutureProvider);

    return DefaultLayout(
      title: 'FutureProviderScreen',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          state.when(
            data: (data) => Text(
              data.toString(),
              textAlign: TextAlign.center,
            ),
            error: (err, stack) => Text(
              err.toString(),
            ),
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
