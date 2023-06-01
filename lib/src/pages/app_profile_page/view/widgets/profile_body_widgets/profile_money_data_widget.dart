import 'package:figma/src/utils/library.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/dimensions_util.dart';

class ProfileMoneyDataWidget extends StatelessWidget {
  const ProfileMoneyDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height10 * 4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                '1 485,67 ₽',
                style: TextStyle(
                    fontFamily: Constants.fontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize: Dimensions.height10 * 2,
                    color: const Color(0xFF00A3FF)),
              ),
              Text(
                'Кошелек ImPay',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: Constants.fontFamily,
                    fontWeight: FontWeight.w400,
                    fontSize: Dimensions.height10 * 1.3),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width10 * 1.5,
                vertical: Dimensions.height10 * 0.2),
            child: VerticalDivider(
                thickness: 1, color: Colors.grey.withOpacity(0.5)),
          ),
          Column(
            children: [
              Text(
                '5 485,67 ₽',
                style: TextStyle(
                    fontFamily: Constants.fontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize: Dimensions.height10 * 2,
                    color: const Color(0xFF00A3FF)),
              ),
              Text(
                'Накормлено бонусов',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: Constants.fontFamily,
                    fontWeight: FontWeight.w400,
                    fontSize: Dimensions.height10 * 1.3),
              )
            ],
          )
        ],
      ),
    );
  }
}
