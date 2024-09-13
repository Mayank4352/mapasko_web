import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_infinite_marquee/flutter_infinite_marquee.dart';
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
            color: Colors.lightBlue),
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
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            Text(error.toString()),
                      ),
                    );
                  },
                ),
              ),
              Text(eventName.toUpperCase()),
            ],
          );
        }),
      ),
    );
  }
}
