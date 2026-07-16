# Image Converter API - PHP Package

Image Converter transforms images between formats. Convert HEIC from iPhones, modern WebP and AVIF formats, or classic PNG, JPG, GIF, and TIFF. Includes optional resizing and quality control.

## Installation

Install via Composer:

```bash
composer require apiverve/imageconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Imageconverter\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'image' => '',
    'outputFormat' => 'png',
    'quality' => 90,
    'maxWidth' => 1920,
    'maxHeight' => 1080
]);

// Print the response
print_r($response);
```

### File Upload

```php
// Upload a file
$response = $client->executeWithFile('/path/to/file.jpg');

// Or use a URL
$response = $client->executeWithUrl('https://example.com/image.jpg');
```

### Error Handling

```php
use APIVerve\Imageconverter\Client;
use APIVerve\Imageconverter\Exceptions\APIException;
use APIVerve\Imageconverter\Exceptions\ValidationException;

try {
    $response = $client->execute(['image' => '', 'outputFormat' => 'png', 'quality' => 90, 'maxWidth' => 1920, 'maxHeight' => 1080]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/imageconverter?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/imageconverter?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/imageconverter?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
