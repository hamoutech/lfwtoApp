import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'app_bar1_model.dart';
export 'app_bar1_model.dart';

class AppBar1Widget extends StatefulWidget {
  const AppBar1Widget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<AppBar1Widget> createState() => _AppBar1WidgetState();
}

class _AppBar1WidgetState extends State<AppBar1Widget> {
  late AppBar1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBar1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 90.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            valueOrDefault<String>(
              widget.title,
              '-',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Bebas Neue',
                  fontSize: 20.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          Container(
            width: 200.0,
            height: 2.0,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
