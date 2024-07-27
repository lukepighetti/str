import 'package:dart_mappable/dart_mappable.dart';

part 'thing_model.mapper.dart';

@MappableClass()
class ThingModel with ThingModelMappable {
  final String summary;
  final String outline;
  final String resolution;
  final DateTime created;
  final bool favorite;
  final List<String> aiQuestions;
  final bool aiQuestionsLoading;

  ThingModel({
    required this.summary,
    required this.outline,
    required this.resolution,
    required this.created,
    required this.favorite,
    required this.aiQuestions,
    required this.aiQuestionsLoading,
  });
}
