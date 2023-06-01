import 'package:figma/src/utils/library.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/dimensions_util.dart';
import '../../controller/app_profile_controller.dart';

class ProfileTopBarWidget extends ConsumerStatefulWidget {
  const ProfileTopBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ProfileTopBarWidgetState();
}

class _ProfileTopBarWidgetState extends ConsumerState<ProfileTopBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: Dimensions.height10 * 12,
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
          child: Padding(
            padding: EdgeInsets.only(bottom: Dimensions.height10 * 1.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          AppProfileController.onTapBack(ref);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        )),
                    const Text(
                      'Профиль',
                      style: TextStyle(
                          fontFamily: Constants.fontFamily,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {
                      AppProfileController.onTapBack(ref);
                    },
                    icon: const Icon(
                      Icons.output_rounded,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
