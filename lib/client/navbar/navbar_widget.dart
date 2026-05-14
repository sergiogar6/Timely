import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.8,
        height: 45.0,
        decoration: BoxDecoration(
          color: Color(0xCBFFFFFF),
          boxShadow: [
            BoxShadow(
              blurRadius: 8.0,
              color: Color(0x84000000),
              offset: Offset(
                0.0,
                8.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(16.0),
          shape: BoxShape.rectangle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.2,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(HomeWidget.routeName);
                },
                child: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.2,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 30.0,
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.2,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(AppointmentsWidget.routeName);
                },
                child: Icon(
                  Icons.calendar_month,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.2,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Icon(
                Icons.person,
                color: Colors.black,
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
