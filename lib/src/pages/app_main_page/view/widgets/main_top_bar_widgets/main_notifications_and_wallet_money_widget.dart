import 'package:figma/src/utils/library.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/dimensions_util.dart';

class MainNotificationsAndWalletMoneyWidget extends StatelessWidget {
  const MainNotificationsAndWalletMoneyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.height10*1.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_rounded,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: Dimensions.height10*0.8,
                right: Dimensions.width10*0.8,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: Dimensions.height10 * 0.7,
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: Dimensions.height10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: Dimensions.height10*0.8),
            child: Text(
              '5 485,67 ₽',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: Constants.fontFamily,
                  fontWeight: FontWeight.w600,
                  fontSize: Dimensions.height10 * 1.6),
            ),
          )
        ],
      ),
    );
  }
}
