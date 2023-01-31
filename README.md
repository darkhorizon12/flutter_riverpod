# flutter_status

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### flutter liverpod
- [flutter riverpod](https://pub.dev/packages/riverpod)
- 상태관리 라이브러리
```agsl
1. StateProvider 설정
2. 설정 상태값 가져오기. final provider = ref.watch(numberProvider);
3. main dart를 ProviderScope로 감싸기
```

### ref.read vs ref.watch
* ref.watch
  * 반환값의 업데이트가 있을 때 지속적으로 build 함수를 재실행
  * 필수적으로 UI 관련 코드에만 사용
* ref.read
  * 실행하는 순간 단 한번만 provider 값을 가져옴
  * onPressed 콜백처럼 특정 액션 뒤에 실행하는 함수 내부에서 사용
