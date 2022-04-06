part of 'widgets.dart';

class Popular extends StatelessWidget {
  final List<HouseModel> houses = HouseModel.mockHouse();
  Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.fromLTRB(defaultMargin, defaultMargin, defaultMargin, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style:
                    blackStyle.copyWith(fontWeight: semibold, fontSize: 16.sp),
              ),
              Text(
                'See More',
                style: greyStyle.copyWith(
                    fontWeight: semibold, fontSize: 12.sp, color: grey2),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 12.h),
            width: double.infinity,
            child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.all(15),
                      height: 94.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          color: white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(defaultRadius),
                                child: Image.asset(
                                  houses[index].urlImg,
                                  width: 70.w,
                                  height: 70.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      houses[index].name,
                                      style: blackStyle.copyWith(
                                          fontWeight: medium),
                                    ),
                                    Text(houses[index].address,
                                        style: greyStyle.copyWith(
                                            fontWeight: regular,
                                            fontSize: 12.sp))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/icons/love${houses[index].whislist ? '.png' : '_outlined.png'}',
                            width: 14.w,
                            height: 14.h,
                          )
                        ],
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(height: 15.w),
                itemCount: houses.length),
          ),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}
