<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
# PhotoX_Pro

An all-in-one solution for displaying interactive images
(Added new features)

<img src="https://user-images.githubusercontent.com/70937274/216778063-619e86a5-a512-4cf0-af08-6bc35eb75bf6.gif" height="434" width="200">&nbsp;&nbsp;&nbsp;<img src="https://user-images.githubusercontent.com/70937274/216778074-3660e543-92a7-48b8-a8c7-65d181eb609e.gif" height="434" width="200">
## Features

- Smoothly animate images into fullscreen and back
- Swipe to dismiss images
- Pinch to zoom
- Automatically generate swipeable gallery when given multiple images

## Getting started

Add `photox_pro` as a dependency in your pubspec.yaml file

```
flutter pub add photox_pro
```

Import PhotoX:
```dart
import 'package:photox_pro/photox_pro.dart';
```

## Usage


```dart
@override
Widget build(BuildContext context) {
  return Container(
    height: 400,
    width: 400,
    child: PhotoX(
      dismissMode: DismissMode.swipeVertical,
      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
      items: [
        PhotoXItem(
            id: "1",
            resource: "assets/img1.jpeg",
            isAsset: true
        ),
        PhotoXItem(
            id: "2",
            resource: "https://picsum.photos/1020/1020",
            isAsset: false
        ),
        PhotoXItem(
            id: "3",
            resource: "https://picsum.photos/1021/1021",
            isAsset: false
        ),
      ]
    )
  );
}
```
## Additional parameters

### dismissMode
| `DismissMode.swipeAny` | `DismissMode.swipeVertical` |
| --- | --- |
| <img src="https://user-images.githubusercontent.com/70937274/218322920-97a5040f-40ad-4052-9ef0-7ee4a176efe3.gif" height="434" width="200"> | <img src="https://user-images.githubusercontent.com/70937274/218322933-cac41507-6faa-4608-a2d0-1e640f1a562a.gif" height="434" width="200"> |

⚠️ `DismissMode.swipeAny` can only be used when provided with a single `PhotoXItem`


### showPageIndicator
Whether to show the page indicator in the thumbnail gallery for multiple PhotoXItems

### pageIndicatorAlignment
The alignment of the page indicator relative to the gallery

### pageIndicatorActiveColor
The color of the active bubble in the page indicator

### pageIndicatorInactiveColor
The color of the inactive bubbles in the page indicator

### pageIndicatorBackgroundColor
The background color of the page indicator

### pageIndicatorBubbleRadius
The radius of the indicator bubbles in the page indicator

### pageIndicatorBubblePadding
The padding between the bubbles in the page indicator

### fullscreenGalleryTitleTextStyle
The TextStyle for the AppBar title in the fullscreen gallery

### fullscreenGalleryAppBarLeadingWidget
A custom widget to use as the leading widget in the fullscreen gallery AppBar
