import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_status/layout/default_layout.dart';
import 'package:flutter_status/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build');
    final state1 = ref.watch(gStateProvider);
    final state2 = ref.watch(gStateFutureProvider);
    final state3 = ref.watch(gStateFuture2Provider);
    final state4 = ref.watch(gStateMultiplyProvider(num1: 9, num2: 9));

    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text('State1: $state1'),
          ),
          state2.when(
            data: (data) => Text(
              'State2: ${data.toString()}',
              textAlign: TextAlign.center,
            ),
            error: (err, stack) => Text(
              err.toString(),
            ),
            loading: () => Center(child: CircularProgressIndicator()),
          ),
          state3.when(
            data: (data) => Text(
              'State3: ${data.toString()}',
              textAlign: TextAlign.center,
            ),
            error: (err, stack) => Text(
              err.toString(),
            ),
            loading: () => Center(child: CircularProgressIndicator()),
          ),
          Center(
            child: Text('State4: ${state4.toString()}'),
          ),
          Consumer(
            builder: (context, ref, child) {
              print('Consumer.builder build');
              final state5 = ref.watch(gStateNotifierProvider);
              return Row(
                children: [
                  Text('State5: $state5'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  child!,
                ],
              );
            },
            // 재빌드될 필요가 없는 위젯들을 child 파라미터에 할당
            child: const Text('Hello'),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(gStateNotifierProvider.notifier).decrement();
                },
                child: Text('Decrement'),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(gStateNotifierProvider.notifier).increment();
                },
                child: Text('Increment'),
              ),
            ],
          ),
          // invalidate()
          ElevatedButton(
            onPressed: () {
              ref.invalidate(gStateNotifierProvider);
            },
            child: Text(
              'Invalidate',
            ),
          ),
        ],
      ),
    );
  }
}
