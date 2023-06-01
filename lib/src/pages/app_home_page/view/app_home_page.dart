import 'package:figma/src/pages/app_clear_page/view/app_clear_page.dart';
import 'package:figma/src/pages/app_home_page/controller/app_home_page_controller.dart';
import 'package:figma/src/pages/app_main_page/view/app_main_page.dart';
import 'package:figma/src/pages/app_profile_page/view/app_profile_page.dart';
import 'package:figma/src/utils/library.dart';

class AppHomePage extends ConsumerStatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  final route = 'app_home_page';

  @override
  ConsumerState<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends ConsumerState<AppHomePage> {
  final icons = [
    Icons.home,
    Icons.shopping_bag_rounded,
    Icons.account_balance_wallet_rounded,
    Icons.message_rounded,
    Icons.card_giftcard_rounded
  ];
  final menuLabels = ['Главная', 'Покупки', 'Платежи', 'Чат', 'Бонусы'];
  final menuPages = [
    const AppMainPage(),
    const AppClearPage(),
    const AppClearPage(),
    const AppClearPage(),
    const AppClearPage(),
    const AppProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    final bottomMenuIndex = ref.watch(bottomMenuIndexProvider);

    return Scaffold(
      body: menuPages[bottomMenuIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            AppHomePageController.onBottomMenuTap(ref, index);
          },
          showUnselectedLabels: true,
          currentIndex: bottomMenuIndex == 5 ? 0 : bottomMenuIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color(0xFF02A1FB),
          items: List.generate(
              5,
              (index) => BottomNavigationBarItem(
                  icon: Icon(icons[index]), label: menuLabels[index]))),
    );
  }
}
