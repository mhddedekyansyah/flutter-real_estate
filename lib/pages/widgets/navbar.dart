part of 'widgets.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.fromLTRB(defaultMargin, 40, defaultMargin, defaultMargin),
      height: 40.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/icons/menu.png',
            width: 20.w,
            height: 20.h,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/location.png',
                width: 20.w,
                height: 20.h,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'California, ',
                    style: blackStyle.copyWith(
                        fontWeight: semibold, fontSize: 12.sp)),
                TextSpan(
                    text: 'US',
                    style: greyStyle.copyWith(
                        fontSize: 12.sp, fontWeight: semibold)),
              ]))
            ],
          ),
          Stack(
            children: [
              Container(
                width: 20.w,
                height: 20.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/notif.png'))),
              ),
              Positioned(
                top: 2,
                right: 2.5,
                child: Container(
                  width: 7.w,
                  height: 7.h,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
