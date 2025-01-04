class ChartModel {
  final String tierName;
  final int minPoint;
  final int maxPoint;
  final int seqNo;
  final String fontColor;
  final String bgColor;

  ChartModel({
    required this.tierName,
    required this.minPoint,
    required this.maxPoint,
    required this.seqNo,
    required this.fontColor,
    required this.bgColor,
  });
  factory ChartModel.fromJson(jsonData) {
    return ChartModel(
      tierName: jsonData['tierName'] == null ? '0' : jsonData['tierName'],
      minPoint: jsonData['minPoint'] == null ? 0 : jsonData['minPoint'],
      maxPoint: jsonData['maxPoint'],
      seqNo: jsonData['seqNo'],
      fontColor: jsonData['fontColor'],
      bgColor: jsonData['bgColor'],
    );
  }
}
