import 'package:flutter/material.dart';
import 'package:uself/models/content_home.dart';
import 'package:uself/pages/detail_content.dart';


import '../theme.dart';

class UselfCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final Uself items = UselfList[index];
          return InkWell(
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            items.imageAsset,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Text(
                          items.name,
                          style: blackTextStyle.copyWith(fontSize: 18),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Text(
                            //  '\$${items.price}',
                            //   style: blackTextStyle.copyWith(fontSize: 16),
                            // ),
                            Row(
                              children: [
                                // Icon(
                                //   Icons.star,
                                //   color: Colors.orange,
                                // ),
                                // Text(
                                //   '${items.rating}',
                                //   style: greyTextStyle.copyWith(fontSize: 14),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(

                        height: 30,
                        width: 75,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => DetailPage(uself: items),),);
                          },
                          child: Text('Lihat',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff6255A5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: UselfList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2 / 3),
      ),
    );
  }
}
