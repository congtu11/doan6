import 'package:daoan6/Pages/chat_detail/chat_detail.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ConversationCard extends StatelessWidget {
  const ConversationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => ChatDetail()));
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            CircleAvatar(
              radius: 25,
            ),
            SizedBox(
              width: getProportionateScreenWidth(15),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vinh",
                    style: TextStyle(fontSize: getProportionateScreenWidth(18)),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "This a message for this conversation and it very long l0ng but i ",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(16)),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text("7:30")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
