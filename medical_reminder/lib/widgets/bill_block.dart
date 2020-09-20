import 'package:clipboard/clipboard.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:medical_reminder/constants.dart';
import 'package:medical_reminder/models/bill.dart';
import 'package:medical_reminder/screens/medicine_page.dart';
import 'package:share/share.dart';

class BillBlock extends StatelessWidget {
  final Bill bill;
  BillBlock(this.bill);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width / 90, vertical: size.width / 360),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MedicinePage(
              data: bill.medicines,
            );
          }));
        },
        child: Slidable(
          actionPane: SlidableScrollActionPane(),
          actionExtentRatio: 0.25,
          child: Card(
            color: kSecondary,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: size.height / 10,
                  color: kPrimary,
                  width: size.width / 36,
                ),
                Expanded(
                  child: ListTile(
                      title: Text(
                        '${bill.name}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: size.height / 45,
                            fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text('Date : 12/07 - 15/09'),
                      trailing: IconButton(
                          icon: Icon(
                            Icons.access_time,
                            color: Colors.green,
                          ),
                          onPressed: () {})),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconSlideAction(
              caption: 'Print PDF',
              color: Colors.blue,
              icon: Icons.open_in_new,
              onTap: () {},
            ),
            IconSlideAction(
              caption: 'Share',
              color: Colors.indigo,
              icon: Icons.share,
              onTap: () {},
            ),
          ],
          secondaryActions: <Widget>[
            IconSlideAction(
                caption: 'Notifications',
                color: Colors.black45,
                icon: Icons.notifications,
                onTap: () {}),
            IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
