import 'package:figma/src/utils/library.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/dimensions_util.dart';

class ProfileHelpWidget extends StatelessWidget {
  const ProfileHelpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: Dimensions.height10 * 1.2),
          child: Row(
            children: [
              Container(
                width: Dimensions.width10 * 3.8,
                height: Dimensions.height10 * 3.8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.help_outline_rounded,
                  color: Color(0xFF02A1FB),
                ),
              ),
              SizedBox(width: Dimensions.width10 * 2.3),
              Text(
                'Помощь',
                style: TextStyle(
                  fontSize: Dimensions.height10 * 1.6,
                  fontFamily: Constants.fontFamily,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
