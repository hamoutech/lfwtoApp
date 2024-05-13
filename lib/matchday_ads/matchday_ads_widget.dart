import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'matchday_ads_model.dart';
export 'matchday_ads_model.dart';

class MatchdayAdsWidget extends StatefulWidget {
  const MatchdayAdsWidget({
    super.key,
    required this.link,
    required this.youtubelink,
  });

  final String? link;
  final String? youtubelink;

  @override
  State<MatchdayAdsWidget> createState() => _MatchdayAdsWidgetState();
}

class _MatchdayAdsWidgetState extends State<MatchdayAdsWidget> {
  late MatchdayAdsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchdayAdsModel());

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
        title: 'matchdayAds',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            body: StreamBuilder<List<PubsRecord>>(
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
                final containerPubsRecord = containerPubsRecordList.isNotEmpty
                    ? containerPubsRecordList.first
                    : null;
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        containerPubsRecord!.matchDayAds,
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
                              if (Navigator.of(context).canPop()) {
                                context.pop();
                              }
                              context.pushNamed(
                                'matchDayLive',
                                queryParameters: {
                                  'link': serializeParam(
                                    widget.link,
                                    ParamType.String,
                                  ),
                                  'youtubeLink': serializeParam(
                                    widget.youtubelink,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
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
        ));
  }
}
