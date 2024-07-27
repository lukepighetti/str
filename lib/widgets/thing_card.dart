import 'package:flutter/material.dart';
import 'package:str/app_theme.dart';
import 'package:str/models/thing_model.dart';

class ThingCard extends StatelessWidget {
  // show text
  // tap to view thing details
  const ThingCard({super.key, required this.thing, required this.thingNumber});

  // show empty thing state
  // tap to create thing
  const ThingCard.empty({super.key, required this.thingNumber}) : thing = null;

  final int thingNumber;

  final ThingModel? thing;

  @override
  Widget build(BuildContext context) {
    final thing = this.thing;

    return Material(
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.hardEdge,
      elevation: 10,
      color: Theme.of(context).colorScheme.surfaceContainerLowest,
      child: InkWell(
        onTap: () {
          // TODO
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: DefaultTextStyle(
            style: context.textHeadline.copyWith(color: context.colorGrey2),
            child: Row(
              children: [
                Text(
                  "$thingNumber.",
                ),
                SizedBox(width: 24),
                Expanded(
                  child: Row(
                    children: [
                      thing == null ? Text("Add an event") : Text(thing.title),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
