import 'package:figma/src/utils/library.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/dimensions_util.dart';

class MainBodyFavoritesWidget extends StatelessWidget {
  const MainBodyFavoritesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoriteLabels = [
      'Мои платежи',
      'Билеты',
      'Карты лояльности',
      'QR-оплата'
    ];
    final icons = [
      Icons.account_balance_wallet_rounded,
      Icons.airplane_ticket_rounded,
      Icons.percent_rounded,
      Icons.qr_code_2_rounded
    ];
    return SizedBox(
      height: Dimensions.height10 * 10.2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(Dimensions.height10 * 0.8),
              child: Container(
                height: Dimensions.height10 * 8.4,
                width: Dimensions.width10 * 7.6,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(Dimensions.height10 * 0.6),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 5)
                  ],
                ),
                padding: EdgeInsets.all(Dimensions.height10 * 0.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      icons[index],
                      color: const Color(0xFF00A3FF),
                    ),
                    SizedBox(height: Dimensions.height10),
                    Text(
                      favoriteLabels[index],
                      style: TextStyle(
                          fontFamily: Constants.fontFamily,
                          fontWeight: FontWeight.w400,
                          fontSize: Dimensions.height10 * 1.1),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
