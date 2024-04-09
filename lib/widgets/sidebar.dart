import 'package:bank/config/consts.dart';

import '../config/image/image.dart';

sidebar() {
  return SafeArea(
    child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Badge(
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
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Codeur Bless',
                style:
                    TextStyle(color: darkColor, fontFamily: bold, fontSize: 22),
              ),
              Text(
                'Voir le profil',
                style: TextStyle(color: darkColor, fontSize: 16),
              ),
            ],
          ),
        ),
        Divider(
          color: textfieldGrey,
        ),
      ],
    ),
  );
}
