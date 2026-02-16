# Image Converter API - Dart/Flutter Client

Image Converter transforms images between formats. Convert HEIC from iPhones, modern WebP and AVIF formats, or classic PNG, JPG, GIF, and TIFF. Includes optional resizing and quality control.

[![pub package](https://img.shields.io/pub/v/apiverve_imageconverter.svg)](https://pub.dev/packages/apiverve_imageconverter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Image Converter API](https://apiverve.com/marketplace/imageconverter?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_imageconverter: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_imageconverter/apiverve_imageconverter.dart';

void main() async {
  final client = ImageconverterClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'image': '',
      'outputFormat': 'png',
      'quality': 90,
      'maxWidth': 1920,
      'maxHeight': 1080
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "id": "a1b2c3d4-5678-90ab-cdef-1234567890ab",
    "inputFormat": "heic",
    "outputFormat": "png",
    "inputSize": 2456789,
    "outputSize": 1834567,
    "mimeType": "image/png",
    "expires": 1707350400000,
    "downloadURL": "https://storage.googleapis.com/apiverve/imageconverter/a1b2c3d4.png"
  },
  "code": 200
}
```

## API Reference

- **API Home:** [Image Converter API](https://apiverve.com/marketplace/imageconverter?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/imageconverter](https://docs.apiverve.com/ref/imageconverter?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
