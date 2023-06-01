import 'package:figma/src/pages/app_home_page/controller/app_home_page_controller.dart';
import 'package:flutter_riverpod/src/consumer.dart';

class AppProfileController {
  static void onTapBack(WidgetRef ref) {
    ref.read(bottomMenuIndexProvider.notifier).update((state) => 0);
  }

}