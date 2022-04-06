part of 'pages.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: Container(
        width: double.infinity,
        height: 80.h,
        color: navBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/home.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                    Text(
                      'Home',
                      style: menuStyle.copyWith(
                        fontWeight: semibold,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/icons/chat.png',
                        width: 20.w, height: 20.h),
                    Text(
                      'Chat',
                      style:
                          menuStyle.copyWith(fontWeight: regular, color: grey1),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/icons/love_menu.png',
                        width: 20.w, height: 20.h),
                    Text(
                      'Favorite',
                      style:
                          menuStyle.copyWith(fontWeight: regular, color: grey1),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/icons/person.png',
                        width: 20.w, height: 20.h),
                    Text(
                      'Profile',
                      style:
                          menuStyle.copyWith(fontWeight: regular, color: grey1),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      )),
      body: SafeArea(
        child: ListView(children: [Navbar(), SearchBar(), House(), Popular()]),
      ),
    );
  }
}
