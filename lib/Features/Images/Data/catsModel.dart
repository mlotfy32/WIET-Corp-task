class CatsModel {
  final String id;
  final String url;
  final int width;
  final int height;
  CatsModel({
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });
  factory CatsModel.fromJson(jsonData) {
    return CatsModel(
      id: jsonData['id'] == null ? '0' : jsonData['id'],
      url: jsonData['url'] == null ? '' : jsonData['url'],
      width: jsonData['width'],
      height: jsonData['height'],
    );
  }
}
