part of 'widgets.dart';

class House extends StatelessWidget {
  final List<HouseModel> houses = HouseModel.mockHouse();
  House({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
          itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(defaultPadding),
                width: 239.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(
                        image: AssetImage(houses[index].urlImg),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              houses[index].name,
                              style: greyStyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: bold),
                            ),
                            Text(
                              houses[index].address,
                              style: greyStyle.copyWith(
                                  color: grey3,
                                  fontSize: 10.sp,
                                  fontWeight: regular),
                            ),
                          ],
                        ),
                        Container(
                          width: 24.w,
                          height: 24.h,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: grey2.withOpacity(.6),
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.asset(
                            'assets/icons/love${houses[index].whislist ? '.png' : '_outlined.png'}',
                            width: 5,
                            height: 5,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 15.w,
              ),
          itemCount: houses.length),
    );
  }
}
