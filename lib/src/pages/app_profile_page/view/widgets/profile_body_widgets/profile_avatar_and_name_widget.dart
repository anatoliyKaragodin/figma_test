import 'package:figma/src/utils/library.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/dimensions_util.dart';

class ProfileAvatarAndNameWidget extends StatelessWidget {
  const ProfileAvatarAndNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height10 * 18,
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 33, bottom: 5),
              child: CircleAvatar(
                foregroundImage:
                    const AssetImage('assets/avatar/Crreq9XOgpk.jpg'),
                radius: Dimensions.height10 * 4,
              ),
            ),
          ),
          const Text(
            'Карагодин Анатолий Анатольевич',
            style: TextStyle(
                fontFamily: Constants.fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 16),
          ),
          const Text(
            '+7 9198364514',
            style: TextStyle(
                color: Colors.grey,
                fontFamily: Constants.fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 13),
          )
        ],
      ),
    );
  }
}
