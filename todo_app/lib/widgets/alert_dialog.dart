import 'package:flutter/cupertino.dart';

// This shows a CupertinoModalPopup which hosts a CupertinoAlertDialog.
void showAlertDialog(BuildContext context, String title, String content,
    {String defaultText = 'OK', String destructiveText = ''}) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(defaultText),
        ),
        if (destructiveText != '') ...[
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(destructiveText!),
          ),
        ]
      ],
    ),
  );
}
