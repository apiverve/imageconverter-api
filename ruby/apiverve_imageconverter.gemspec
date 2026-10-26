# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_imageconverter"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Image Converter API - Ruby Client"
  spec.description   = "Image Converter transforms images between formats. Convert HEIC from iPhones, modern WebP and AVIF formats, or classic PNG, JPG, GIF, and TIFF. Includes optional resizing and quality control."
  spec.homepage      = "https://apiverve.com/marketplace/imageconverter?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/imageconverter-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/imageconverter"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
