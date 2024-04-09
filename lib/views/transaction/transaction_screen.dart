import 'package:bank/config/image/image.dart';

import '../../config/consts.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: ((context, index) => SizedBox(height: 10)),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: ((context, index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imgWallet,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  'Bernard',
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
                      backgroundColor: textfieldGrey,
                      child: Icon(
                        Icons.arrow_downward,
                        size: 20,
                        color: darkColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '+ 455400 CFA',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontFamily: bold,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
