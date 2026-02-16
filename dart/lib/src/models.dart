/// Response models for the Image Converter API.

/// API Response wrapper.
class ImageconverterResponse {
  final String status;
  final dynamic error;
  final ImageconverterData? data;

  ImageconverterResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory ImageconverterResponse.fromJson(Map<String, dynamic> json) => ImageconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ImageconverterData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Image Converter API.

class ImageconverterData {
  String? id;
  String? inputFormat;
  String? outputFormat;
  int? inputSize;
  int? outputSize;
  String? mimeType;
  int? expires;
  String? downloadURL;

  ImageconverterData({
    this.id,
    this.inputFormat,
    this.outputFormat,
    this.inputSize,
    this.outputSize,
    this.mimeType,
    this.expires,
    this.downloadURL,
  });

  factory ImageconverterData.fromJson(Map<String, dynamic> json) => ImageconverterData(
      id: json['id'],
      inputFormat: json['inputFormat'],
      outputFormat: json['outputFormat'],
      inputSize: json['inputSize'],
      outputSize: json['outputSize'],
      mimeType: json['mimeType'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
    );
}

class ImageconverterRequest {
  String image;
  String outputFormat;
  int? quality;
  int? maxWidth;
  int? maxHeight;

  ImageconverterRequest({
    required this.image,
    required this.outputFormat,
    this.quality,
    this.maxWidth,
    this.maxHeight,
  });

  Map<String, dynamic> toJson() => {
      'image': image,
      'outputFormat': outputFormat,
      if (quality != null) 'quality': quality,
      if (maxWidth != null) 'maxWidth': maxWidth,
      if (maxHeight != null) 'maxHeight': maxHeight,
    };
}
