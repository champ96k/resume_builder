/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get banner => const AssetGenImage('assets/images/banner.webp');
  AssetGenImage get coverImage1 =>
      const AssetGenImage('assets/images/cover_Image1.webp');
  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();
  AssetGenImage get resumeCover =>
      const AssetGenImage('assets/images/resume_cover.png');
  AssetGenImage get resumeCover2 =>
      const AssetGenImage('assets/images/resume_cover2.png');
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  AssetGenImage get freeIcon =>
      const AssetGenImage('assets/images/icons/free_icon.webp');
  AssetGenImage get scanIcon =>
      const AssetGenImage('assets/images/icons/scan_icon.webp');
  AssetGenImage get templatesIcon =>
      const AssetGenImage('assets/images/icons/templates_icon.webp');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
