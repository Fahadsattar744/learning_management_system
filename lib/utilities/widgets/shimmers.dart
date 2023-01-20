import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class Shimmers {
  static shimmerLoader() {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    height: 25.7.h,
                    width: 99.w * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26.0),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  static shimmerShop() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: 90.w,
              height: 55.h,
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      color: Colors.white,
                      height: 3.5.h,
                      width: 30.w,
                      child: Container(
                        height: 6.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(color: Colors.black),

                          // border: Border.all(color: Colors.grey)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4.0, right: 4),
                            child: Text(
                              '----',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            //
            Row(
              children: [
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  '---',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: 'Ivybold'),
                )
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int j = 0; j < 6; j++)
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      color: Colors.white,
                      height: 3.5.h,
                      width: 14.2.w,
                      child: Container(
                        height: 6.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(color: Colors.black),
                          // (kbuttonpressed[j] == j)
                          // border: Border.all(color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 4),
                          child: Center(
                            child: Text(
                              '---',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  '----',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: 'Ivybold'),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),

            //
          ],
        ),
      ),
    );
  }

  static shimmerDiscovery() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: 90.w,
              height: 55.h,
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      color: Colors.white,
                      height: 3.5.h,
                      width: 30.w,
                      child: Container(
                        height: 6.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(color: Colors.black),

                          // border: Border.all(color: Colors.grey)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4.0, right: 4),
                            child: Text(
                              '----',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Divider(
                color: Colors.black,
                height: 1.5,
                thickness: 2,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              color: Colors.white,
              height: 45.h,
              width: 90.w,
            ),
            //

            //
          ],
        ),
      ),
    );
  }

  static shimmerLike() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 13.h,
                    width: 26.w,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white
                          // border: Border.all(color: Colors.grey)
                          ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/shoppinggrey.png',
                              height: 25,
                              width: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 4.0, right: 4, top: 7),
                              child: Text(
                                '--',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              '--',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 13.h,
                    width: 26.w,
                    child: Container(
                      height: 6.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white
                          // border: Border.all(color: Colors.grey)
                          ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/discoveryIcon.png',
                              height: 25,
                              width: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 4.0, right: 4, top: 7),
                              child: Text(
                                '--',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              '--',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Container(
                    height: 13.h,
                    width: 26.w,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white
                          // border: Border.all(color: Colors.grey)
                          ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.bookmark,
                              size: 27,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 4.0, right: 4, top: 4),
                              child: Text(
                                '--',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              '--',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            //

            //
          ],
        ),
      ),
    );
  }

  static searchPageGridShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: GridView.builder(
        itemCount: 10,
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.80,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 22.7.h,
            width: 99.w * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26.0),
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }

  static circleImageShimmerLoader() {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(
          width: 100.h,
          height: 100.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
        ));
  }

  static homePageLiveSectionShimmer() {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
            right: 18,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 13.h,
                width: 13.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 13.h,
                width: 13.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 13.h,
                width: 13.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 13.h,
                width: 13.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }

  static listTileShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 28.0),
        itemCount: 2,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: Container(
              width: 6.h,
              height: 6.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            title: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 16,
                  color: Colors.white,
                )),
            subtitle: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 16,
                  color: Colors.white,
                )),
          );
        },
      ),
    );
  }

  static gridViewShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 3,
        itemBuilder: (BuildContext context, index) {
          return Container(
            color: Colors.white,
            height: 100.h,
            width: 100.w,
          );
        },
      ),
    );
  }
}
