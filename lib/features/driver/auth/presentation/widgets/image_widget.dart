import 'dart:io';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageWidget extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit fit;

  ImageWidget({
    required this.url,
    required this.width,
    required this.height,
    this.color,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    if (url == '') return buildPlaceHolderWidget();

    if (url.startsWith("http")) {
      if (url.split('.').last == 'svg') return buildNetworkSvgImage();
      return buildCachedNetworkImage();
    } else if (url.startsWith("assets")) {
      if (url.split('.').last == 'svg') return buildAssetSvgImage();
      return buildImageAsset();
    } else
      return buildImageFile();
  }

  Widget buildCachedNetworkImage() {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
      errorWidget: (context, url, _) => buildErrorWidget(),
      placeholder: (context, url) => buildPlaceHolderWidget(),
      useOldImageOnUrlChange: true,
    );
  }

  buildErrorWidget() {
    return Container(
      width: width,
      height: height,
      color: Colors.redAccent,
    );
  }

  buildPlaceHolderWidget() {
    return Container(
      width: width,
      height: height,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: .5,
            sigmaY: .5,
          ),
          child: Container(
            color: Colors.purple.withOpacity(0.5),
          ),
        ),
      ),
    );
  }

  Widget buildAssetSvgImage() {
    return SvgPicture.asset(
      url,
      width: width,
      height: height,
      color: color,
      fit: BoxFit.contain,
    );
  }

  Widget buildNetworkSvgImage() {
    return SvgPicture.network(
      url,
      width: width,
      height: height,
      color: color,
      fit: BoxFit.contain,
    );
  }

  Widget buildImageAsset() {
    return Image.asset(
      url,
      fit: fit,
      height: height,
      width: width,
    );
  }

  Widget buildImageFile() {
    return Image.file(
      File(url),
      fit: fit,
      height: height,
      width: width,
    );
  }
}
