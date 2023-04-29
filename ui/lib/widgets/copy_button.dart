import 'package:flutter/material.dart';

class CopyIconButton extends StatefulWidget {
  final String? tooltip;
  final VoidCallback? onPressed;

  const CopyIconButton({Key? key, required this.onPressed, this.tooltip})
      : super(key: key);

  @override
  State<CopyIconButton> createState() => _CopyIconButtonState();
}

class _CopyIconButtonState extends State<CopyIconButton> {
  final beforeCopyIcon = const Icon(
    Icons.copy_rounded,
  );

  final afterCopyIcon = const Icon(
    Icons.check_rounded,
    color: Colors.green,
  );

  final afterCopyTooltip = 'Copied';

  late Icon _icon;

  @override
  void initState() {
    super.initState();
    _icon = beforeCopyIcon;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: (event) => {
        if (_icon == afterCopyIcon)
          {
            setState(() {
              _icon = beforeCopyIcon;
            })
          }
      },
      //child: Tooltip(message: "Copied", child: afterCopyIcon),
      child: IconButton(
        tooltip: widget.tooltip,
        icon: _icon,
        onPressed: widget.onPressed == null
            ? null
            : () {
                setState(() {
                  _icon = afterCopyIcon;
                });
                Future.delayed(const Duration(milliseconds: 2000), () {
                  setState(() {
                    _icon = beforeCopyIcon;
                  });
                });
                widget.onPressed!();
              },
      ),
    );
  }
}
