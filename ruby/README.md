# Image Converter API - Ruby Gem

Image Converter transforms images between formats. Convert HEIC from iPhones, modern WebP and AVIF formats, or classic PNG, JPG, GIF, and TIFF. Includes optional resizing and quality control.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_imageconverter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_imageconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_imageconverter'

# Initialize the client
client = APIVerve::Imageconverter::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  image: "",
  outputFormat: "png",
  quality: 90,
  maxWidth: 1920,
  maxHeight: 1080
})

# Print the response
puts response
```

### File Upload

```ruby
# Upload a file
response = client.execute_with_file("/path/to/file.jpg")

# Or use a URL
response = client.execute_with_url("https://example.com/image.jpg")
```

### Error Handling

```ruby
begin
  response = client.execute({ outputFormat: "png" })
  puts response["data"]
rescue APIVerve::Imageconverter::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Imageconverter::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Imageconverter::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/imageconverter?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/imageconverter?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/imageconverter?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
