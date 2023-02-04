import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

// 1. 어떤 provider를 사용할 지 고만할 필요가 없도록

final _testProvider = Provider<String>((ref) => 'Hello Code Generation');

@riverpod
String gState(GStateRef ref) {
  return 'Hello Code Generation';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref) async {
  await Future.delayed(Duration(seconds: 3));

  return 10;
}

// AutoDisposeProvider 사용안하고 싶을 때
// keepAlive default = false
@Riverpod(
  keepAlive: true,
)
Future<int> gStateFuture2(GStateFuture2Ref ref) async {
  await Future.delayed(Duration(seconds: 3));

  return 10;
}

// 2. 파라미터(.family)를 일반 함수처럼 사용할 수 있도록
class Parameter {
  final int num1;
  final int num2;

  Parameter({
    required this.num1,
    required this.num2,
  });
}

final _testFamilyProvider =
    Provider.family<int, Parameter>((ref, param) => param.num1 * param.num2);

@riverpod
int gStateMultiply(GStateMultiplyRef ref,
    {required int num1, required int num2}) {
  return num1 * num2;
}

@riverpod
class GStateNotifier extends _$GStateNotifier {

  // build 메서드는 필수. 초기값 설정
 @override
  int build() {
    return 0;
  }

  increment() {
   state++;
  }

  decrement() {
   state--;
  }
}
