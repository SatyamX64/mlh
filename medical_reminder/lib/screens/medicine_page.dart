import 'package:flutter/material.dart';
import 'package:medical_reminder/widgets/medicine_card.dart';
import '../constants.dart';

class MedicinePage extends StatelessWidget {
  final List data;
  MedicinePage({
    this.data,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(size.width / 15, size.height / 16,
              size.width / 15, size.height / 180),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, size.height / 40),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: kPrimary,
                        size: size.height / 42,
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Text(
                      'Medicines',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: size.height / 32),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 45,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (_, index) {
                    return MedicineCard(
                      title: data[index].name,
                    );
                  },
                  separatorBuilder: (_, __) {
                    return SizedBox(
                      height: size.height / 45,
                    );
                  },
                  itemCount: data.length,
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
