import 'package:json_annotation/json_annotation.dart';

part 'image_response.g.dart';

/// A class representing the response containing an image.
@JsonSerializable()
class ImageResponse {
  /// The URL or path of the image.
  final String? image;

  /// Creates an instance of [ImageResponse].
  const ImageResponse({
    this.image,
  });

  /// Creates an [ImageResponse] instance from a JSON object.
  ///
  /// [json] is a map containing key-value pairs corresponding to the fields of [ImageResponse].
  factory ImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseFromJson(json);

  /// Converts the [ImageResponse] instance to a JSON object.
  ///
  /// Returns a map containing key-value pairs corresponding to the fields of [ImageResponse].
  Map<String, dynamic> toJson() => _$ImageResponseToJson(this);
}