import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'beginpage_model.dart';
export 'beginpage_model.dart';

class BeginpageWidget extends StatefulWidget {
  const BeginpageWidget({super.key});

  @override
  State<BeginpageWidget> createState() => _BeginpageWidgetState();
}

class _BeginpageWidgetState extends State<BeginpageWidget> {
  late BeginpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BeginpageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'beginpage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            body: SafeArea(
              top: true,
              child: StreamBuilder<List<PubsRecord>>(
                stream: queryPubsRecord(
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return const Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color(0xFF265631),
                          ),
                        ),
                      ),
                    );
                  }
                  List<PubsRecord> containerPubsRecordList = snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final containerPubsRecord = containerPubsRecordList.isNotEmpty
                      ? containerPubsRecordList.first
                      : null;

                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(
                          containerPubsRecord!.beginPageAds,
                        ).image,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(1.0, -1.0),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 15.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.black,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 36.0,
                              icon: const Icon(
                                Icons.close,
                                color: Colors.black,
                                size: 18.0,
                              ),
                              onPressed: () async {
                                if (currentJwtToken != '') {
                                  context.goNamedAuth(
                                      'homePage', context.mounted);
                                } else {
                                  GoRouter.of(context).prepareAuthEvent();
                                  final user = await authManager
                                      .signInAnonymously(context);
                                  if (user == null) {
                                    return;
                                  }

                                  context.goNamedAuth(
                                    'homePage',
                                    context.mounted,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }
}
