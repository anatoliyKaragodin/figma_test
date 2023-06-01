import 'package:figma/src/pages/app_main_page/view/widgets/main_top_bar_widgets/main_avatar_and_name_widget.dart';
import 'package:figma/src/pages/app_main_page/view/widgets/main_top_bar_widgets/main_notifications_and_wallet_money_widget.dart';
import 'package:figma/src/pages/app_main_page/view/widgets/main_top_bar_widgets/main_search_widget.dart';
import 'package:figma/src/utils/library.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/dimensions_util.dart';

class MainTopBarWidget extends StatelessWidget {
  const MainTopBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: Dimensions.height10 * 21.1,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF02A1FB),
              Color(0xFF0268C6),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(Dimensions.height10 * 1.2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MainAvatarAndNameWidget(),
                        buildWalletText()
                      ],
                    ),
                  ),
                  const MainNotificationsAndWalletMoneyWidget()
                ],
              ),
              const MainSearchWidget()
            ],
          ),
        ),
      ),
    );
  }

  Padding buildWalletText() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.height10 * 1.6),
      child: Text(
        'Баланс кошелька ImPay',
        style: TextStyle(
            color: Colors.white,
            fontFamily: Constants.fontFamily,
            fontWeight: FontWeight.w400,
            fontSize: Dimensions.height10 * 1.6),
      ),
    );
  }
}
