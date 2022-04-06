part of 'widgets.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: defaultMargin, left: defaultMargin, right: defaultMargin),
      height: 40.h,
      child: Row(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(10),
            height: 40,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(defaultRadius),
                boxShadow: [
                  BoxShadow(color: grey3, spreadRadius: 0.2, blurRadius: 10)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/search.png',
                      width: 16.w,
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Search Classic Style',
                      style: greyStyle.copyWith(
                          fontSize: 12.sp, fontWeight: regular, color: grey2),
                    )
                  ],
                ),
                Image.asset(
                  'assets/icons/voice.png',
                  width: 16.w,
                  height: 16.h,
                )
              ],
            ),
          )),
          SizedBox(
            width: 10.w,
          ),
          Container(
            height: 40.h,
            width: 40.w,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: black,
                borderRadius: BorderRadius.circular(defaultRadius)),
            child: Image.asset(
              'assets/icons/filter.png',
              width: 12.w,
              height: 12.h,
            ),
          )
        ],
      ),
    );
  }
}
