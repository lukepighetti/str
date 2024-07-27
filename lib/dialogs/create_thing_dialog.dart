import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:str/app_theme.dart';

// title
// description
// create
// cancel
class CreateThingDialog extends StatefulWidget {
  const CreateThingDialog({super.key});

  @override
  State<CreateThingDialog> createState() => _CreateThingDialogState();
}

class _CreateThingDialogState extends State<CreateThingDialog> {
  final summaryController = TextEditingController();
  final outlineController = TextEditingController();
  final resolutionController = TextEditingController();

  bool get canSubmit => summaryController.text.trim().isNotEmpty;

  void submit() {
    //
  }

  @override
  void dispose() {
    summaryController.dispose();
    outlineController.dispose();
    resolutionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    summaryController.watch(context);
    outlineController.watch(context);
    resolutionController.watch(context);

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 500,
        maxWidth: 400,
      ),
      child: Material(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "My event",
                style: context.textHeadline,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                maxLines: 1,
                controller: summaryController,
                decoration: InputDecoration(
                  labelText: "Summary",
                  hintText: "Went sailing with Joe on Long Lake",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: outlineController,
                minLines: 5,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: "Plot outline (Optional)",
                  hintText: "1. launched in high winds\n"
                      "2. crashed the boat\n"
                      "3. incredible wind power\n"
                      "4. pushaw is huge\n"
                      "5. had to land on smashed dock",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: resolutionController,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: "Resolution (Optional)",
                  hintText: "Felt amazing to get out with an old friend",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              FilledButton(
                onPressed: canSubmit ? submit : null,
                child: Text("Save Event"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
