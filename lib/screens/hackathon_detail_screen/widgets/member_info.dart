import 'package:flutter/material.dart';
import 'package:team_hack/screens/hackathon_detail_screen/widgets/member_state.dart';

class MemberInfo extends StatelessWidget {
  const MemberInfo(
      {super.key,
      required this.memberName,
      required this.memberRole,
      this.isLeader = false});

  final String memberName;
  final String memberRole;
  final bool isLeader;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                memberName,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                memberRole,
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.6)),
              ),
            ],
          ),
          const Spacer(),
          isLeader
              ? const MemberState(
                  title: 'leader',
                  color: Color(0xffECF2FF),
                  textColor: Color(0xff0477f4),
                )
              : Container()
        ],
      ),
    );
  }
}
