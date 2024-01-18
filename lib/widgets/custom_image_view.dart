// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImageView extends StatelessWidget {
  final String? imagePath;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? fit;
  final String placeHolder;
  final Alignment? alignment;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? radius;
  final BoxBorder? border;

  // A constructor with named parameters for better clarity
  const CustomImageView({
    Key? key, // Add this line
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.radius,
    this.margin,
    this.border,
    this.placeHolder = 'assets/images/image_not_found.png',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildWidget(),
          )
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: _buildCircleImage(),
      ),
    );
  }

  Widget _buildCircleImage() {
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.zero,
      child: _buildImageWithBorder(),
    );
  }

  Widget _buildImageWithBorder() {
    return Container(
      decoration: border != null
          ? BoxDecoration(
              border: border,
              borderRadius: radius,
            )
          : null,
      child: _buildImageView(),
    );
  }

  Widget _buildImageView() {
    if (imagePath != null) {
      switch (imagePath!.imageType) {
        case ImageType.svg:
          return _buildSvgImage();
        case ImageType.file:
          return _buildFileImage();
        case ImageType.network:
          return _buildNetworkImage();
        case ImageType.png:
        default:
          return _buildAssetImage();
      }
    }
    return const SizedBox();
  }

  Widget _buildSvgImage() {
    return SizedBox(
      height: height,
      width: width,
      child: SvgPicture.asset(
        imagePath!,
        height: height,
        width: width,
        fit: fit ?? BoxFit.contain,
        colorFilter: ColorFilter.mode(
          color ?? Colors.transparent,
          BlendMode.srcIn,
        ),
      ),
    );
  }

  Widget _buildFileImage() {
    return Image.file(
      File(imagePath!),
      height: height,
      width: width,
      fit: fit ?? BoxFit.cover,
      color: color,
    );
  }

  Widget _buildNetworkImage() {
    return CachedNetworkImage(
      height: height,
      width: width,
      fit: fit,
      imageUrl: imagePath!,
      color: color,
      placeholder: (context, url) => SizedBox(
        height: 30,
        width: 30,
        child: LinearProgressIndicator(
          color: Colors.grey.shade200,
          backgroundColor: Colors.grey.shade100,
        ),
      ),
      errorWidget: (context, url, error) => Image.asset(
        placeHolder,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
      ),
    );
  }

  Widget _buildAssetImage() {
    return Image.asset(
      imagePath!,
      height: height,
      width: width,
      fit: fit ?? BoxFit.cover,
      color: color,
    );
  }
}

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (startsWith('http') || startsWith('https')) {
      return ImageType.network;
    } else if (endsWith('.svg')) {
      return ImageType.svg;
    } else if (startsWith('file://')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

enum ImageType { svg, png, network, file, unknown }
