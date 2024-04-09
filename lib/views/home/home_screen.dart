import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../config/consts.dart';
import '../../config/image/image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Heureux de vous revoire',
                        style: TextStyle(
                            color: darkFontGrey,
                            fontSize: 16,
                            fontFamily: semibold)),
                    Text('Codeur Bless',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 22,
                          fontFamily: bold,
                        )),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // co,tenu
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Balance',
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 18,
                                fontFamily: semibold,
                              ),
                            ),
                            Icon(
                              Icons.more_horiz,
                              size: 26,
                              color: whiteColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Badge(
                              backgroundColor: golden,
                              child: Icon(
                                Icons.wallet,
                                size: 26,
                                color: whiteColor,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '455 655 CFA',
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 22,
                                fontFamily: bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 38,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 14,
                                      backgroundColor: goldenlight,
                                      child: Icon(
                                        Icons.arrow_downward,
                                        size: 26,
                                        color: Color.fromARGB(255, 2, 98, 6),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Receptions',
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16,
                                        fontFamily: semibold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '45900 CFA',
                                  style: TextStyle(
                                      color: goldenlight,
                                      fontSize: 16,
                                      fontFamily: bold),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 14,
                                      backgroundColor: goldenlight,
                                      child: Icon(
                                        Icons.arrow_upward,
                                        size: 26,
                                        color: Colors.red,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Dépences',
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16,
                                        fontFamily: semibold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '6900 CFA',
                                  style: TextStyle(
                                      color: goldenlight,
                                      fontSize: 16,
                                      fontFamily: bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // end card

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),

                    // benef
                    Text(
                      'Bénéficiaires',
                      style: TextStyle(
                        color: darkColor,
                        fontSize: 20,
                        fontFamily: bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          10,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 14),
                            child: InkWell(
                              onTap: () {},
                              child: Badge(
                                alignment: Alignment.bottomRight,
                                backgroundColor: golden,
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
                                      width: 60,
                                      height: 60,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // trasaction
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transactions',
                          style: TextStyle(
                            color: darkColor,
                            fontSize: 20,
                            fontFamily: bold,
                          ),
                        ),
                        InkWell(
                          child: Text(
                            'Voir plus',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,
                              fontFamily: semibold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: ((context, index) =>
                          SizedBox(height: 10)),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imgRozarpay,
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            'Robert',
                            style: TextStyle(
                              color: darkColor,
                              fontSize: 18,
                              fontFamily: bold,
                            ),
                          ),
                          subtitle: Text(
                            '02/04/2024',
                            style: TextStyle(
                              color: darkColor,
                              fontSize: 14,
                            ),
                          ),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: goldenlight,
                                child: Icon(
                                  Icons.arrow_outward,
                                  size: 20,
                                  color: Color.fromARGB(255, 2, 98, 6),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '- 55400 CFA',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontFamily: bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),

                    // donner
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
