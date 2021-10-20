import 'package:flutter/material.dart';
import 'package:shoes_store/widgets/menu_widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            elevation: 0,
            title: Text('Home',
                style: TextStyle(
                    fontFamily: 'Poppins-SemiBold',
                    color: Colors.black87,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),

            leading: MenuWidget(),

            // IconButton(
            //   icon: Icon(
            //     Icons.menu,
            //     color: Colors.black87,
            //   ),
            //   onPressed: () {},
            // ),
          ),
          endDrawer: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(30))),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text(
                        //   'Find Your',
                        //   style: TextStyle(color: Colors.black87, fontSize: 25),
                        // ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        // Text(
                        //   'Home',
                        //   style: TextStyle(
                        //       color: Colors.black,
                        //       fontSize: 40,
                        //       fontWeight: FontWeight.bold),
                        // ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                              promoCard('assets/images/1.png'),
                              promoCard('assets/images/2.png'),
                              promoCard('assets/images/3.png'),
                              promoCard('assets/images/4.png')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: bottomNavigationBar(),
        ),
      );
}

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Color.fromRGBO(244, 243, 243, 1),
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black87,
            ),
            hintText: " what you're looking for ?",
            hintStyle: TextStyle(fontSize: 15, color: Colors.grey)),
      ),
    );
  }
}

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/1.png'),
          )),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.3,
            0.8,
          ], colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.1),
          ]),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Best Design',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget promoCard(image) {
  return AspectRatio(
    aspectRatio: 1.8 / 1,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 230,
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.1,
              0.8,
            ], colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 18, left: 18),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Shoes Nike',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins-SemiBold'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 18, right: 18),
                alignment: Alignment.bottomRight,
                child: Text(
                  '\$130',
                  style: TextStyle(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins-SemiBold'),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget bottomNavigationBar() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 5.0,
            offset: Offset(0.0, 0.0))
      ],
    ),
    child: BottomNavigationBar(
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                "Home",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.red.shade900),
              ),
            ),
            label: '',
            icon: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                )
                // Image.asset(
                //   'assets/images/001-home.png',
                //   fit: BoxFit.contain,
                //   width: 20,
                // ),
                )),
        BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                "Searching",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.red.shade900),
              ),
            ),
            label: '',
            icon: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                )
                // Image.asset(
                //   'assets/images/002-searching.png',
                //   fit: BoxFit.contain,
                //   width: 20,
                // ),
                )),
        BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                "Bookmark",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            label: '',
            icon: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.bookmark_outline,
                  color: Colors.black,
                )
                //  Image.asset(
                //   'assets/images/003-bookmark.png',
                //   fit: BoxFit.contain,
                //   width: 20,
                // ),
                )),
        BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                "Log Out",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            label: '',
            icon: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.logout_outlined,
                  color: Colors.black,
                )
                //  Image.asset(
                //   'assets/images/004-logout.png',
                //   fit: BoxFit.contain,
                //   width: 20,
                // ),
                )),
      ],

      elevation: 0,
      selectedItemColor: Colors.black,
      //backgroundColor: Colors.grey.shade50,
    ),
  );
}
