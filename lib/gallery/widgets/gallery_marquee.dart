import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_infinite_marquee/flutter_infinite_marquee.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GalleryMarquee extends StatelessWidget {
  const GalleryMarquee(
      {super.key, required this.galleryImages, required this.eventName});
  final Map<String, List<String>> galleryImages;
  final String eventName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: Container(
        height: 30.h,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10.sp),
            color: Colors.lightBlue.withOpacity(0.2)),
        padding: EdgeInsets.all(8.0.sp),
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.9,
                child: InfiniteMarquee(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0.sp),
                      child: CachedNetworkImage(
                        fit: BoxFit.contain,
                        imageUrl: galleryImages[eventName]![
                            index % galleryImages[eventName]!.length],
                        progressIndicatorBuilder: (context, url, progress) =>
                            Center(
                                child: CircularProgressIndicator(
                                    value: progress.progress)),
                        errorWidget: (context, url, error) =>
                            Text(error.toString()),
                      ),
                    );
                  },
                ),
              ),
              Text(eventName,
                  style: GoogleFonts.nunito(
                      fontSize: 100.w < 900 ? 16.sp : 11.sp,
                      color: Color.fromARGB(255, 0, 44, 82),
                      fontWeight: FontWeight.w900)),
            ],
          );
        }),
      ),
    );
  }
}
