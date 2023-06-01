import 'package:figma/src/utils/library.dart';

final bottomMenuIndexProvider = StateProvider((ref) => 0);

class AppHomePageController {
  static void onProfileTap(WidgetRef ref) {
    ref.read(bottomMenuIndexProvider.notifier).update((state) => 5);
  }

  static void onBottomMenuTap(WidgetRef ref, int index) {
    ref.read(bottomMenuIndexProvider.notifier).update((state) => index);
  }
}
