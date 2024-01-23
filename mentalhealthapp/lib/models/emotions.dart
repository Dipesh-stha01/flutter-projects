// ignore_for_file: public_member_api_docs, sort_constructors_first
class Emotion {
  final String iconPath;
  final String emotName;

  Emotion({required this.iconPath, required this.emotName});

  @override
  String toString() => 'Emotion(iconPath: $iconPath, emotName: $emotName)';
}
