import '../../config/consts.dart';
import '../../config/image/image.dart';
import '../../widgets/sidebar.dart';
import '../carte/carte_screen.dart';
import '../transaction/transaction_screen.dart';
import 'home_screen.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({super.key});

  // varriable
  final RxBool isMenuVisible = false.obs;

  final RxInt currentNavIndex = 0.obs;

  final List<Widget> navBody = [
    HomeScreen(),
    TransactionScreen(),
    CarteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // appbar
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          isMenuVisible.value = !isMenuVisible.value;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(100),
                            color: primaryColor,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              imgProfile,
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Badge(
                            backgroundColor: golden,
                            child: Icon(
                              Icons.notifications_none,
                              color: primaryColor,
                              size: 28,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                Divider(
                  color: textfieldGrey,
                ),

                // containte des pages
                Expanded(
                  child: Obx(() => navBody[currentNavIndex.value]),
                ),

                // navigation en bas
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(children: [
                          _navItem(
                              index: 0, iconData: Icons.home, label: 'Home'),
                          _navItem(
                              index: 1,
                              iconData: Icons.data_exploration,
                              label: 'Transaction'),
                          _navItem(
                              index: 2, iconData: Icons.wallet, label: 'Carte'),
                        ]),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 28,
                          backgroundColor: primaryColor,
                          child: Icon(
                            Icons.add,
                            color: whiteColor,
                            size: 26,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // side bar de la page
            Obx(
              () => Visibility(
                visible: isMenuVisible.value,
                child: AnimatedPositioned(
                  duration: Duration(seconds: 2),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.height,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Row(
                      children: [
                        // ici the containt of the side bar
                        Container(
                          width: 260,
                          height: MediaQuery.of(context).size.height,
                          color: whiteColor,
                          child: sidebar(),
                        ),
                        InkWell(
                          onTap: () {
                            isMenuVisible.value = !isMenuVisible.value;
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            color: Color.fromARGB(191, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _navItem({int? index, IconData? iconData, String? label}) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: currentNavIndex.value == index
                ? whiteColor
                : Colors.transparent,
          ),
          child: InkWell(
            onTap: () {
              currentNavIndex.value = index!;
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  size: 26,
                  color: currentNavIndex.value == index
                      ? primaryColor
                      : whiteColor,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  currentNavIndex.value == index ? label! : '',
                  style: TextStyle(
                      color: darkFontGrey, fontFamily: bold, fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
