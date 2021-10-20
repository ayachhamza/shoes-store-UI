import 'package:flutter/material.dart';
import 'package:shoes_store/model/menu_item.dart';

class MenuItems {
  static const promos = MenuItem('Promo', Icons.card_giftcard);
  static const Notifications = MenuItem('Notifications', Icons.notifications);
  static const help = MenuItem('Help', Icons.help);
  static const aboutUs = MenuItem('About Us', Icons.info_outline);
  static const rateUs = MenuItem('Rate Us', Icons.star_border);
  static const signout = MenuItem('Sign Out', Icons.logout);

  static const all = <MenuItem>[
    promos,
    Notifications,
    help,
    aboutUs,
    rateUs,
    signout,
  ];
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.red.shade900,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/6.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                          left: 5,
                        ),
                        child: Text(
                          'Hamza Ayach',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ))
                  ],
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //   ),
                //   child: Image.asset(
                //     'assets/images/pic.jpg',
                //     fit: BoxFit.cover,
                //   ),
                //   height: 120,
                //   width: 120,
                // ),
              ),
              SizedBox(
                height: 60,
              ),
              ...MenuItems.all.map(buildMenuItem).toList(),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      );
  Widget buildMenuItem(MenuItem item) => Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: ListTile(
          minLeadingWidth: 20,
          leading: Icon(
            item.icon,
            color: Colors.white,
          ),
          title: Text(
            item.title,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onTap: () {},
        ),
      );
}
