import 'package:dart_mappable/dart_mappable.dart';

part 'thing_model.mapper.dart';

@MappableClass()
class ThingModel with ThingModelMappable {
  final String title;
  final DateTime created;
  final bool favorite;
  final List<String> aiQuestions;
  final bool aiQuestionsLoading;

  ThingModel({
    required this.title,
    required this.created,
    required this.favorite,
    required this.aiQuestions,
    required this.aiQuestionsLoading,
  });
}
