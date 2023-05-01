import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import '../models/all_subscription.dart';
import '../theme/colors.dart';

class AllSubscription extends StatefulWidget {
  const AllSubscription({Key? key});

  @override
  _AllSubscriptionState createState() => _AllSubscriptionState();
}

class _AllSubscriptionState extends State<AllSubscription> {
  int? _selectedItemIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(LineIcons.chevronLeft,
                          size: 36, color: Colors.black)),
                  Text('All Subscriptions',
                      style: GoogleFonts.outfit(
                          fontSize: 24, fontWeight: FontWeight.w600)),
                  const Icon(LineIcons.horizontalEllipsis,
                      size: 36, color: Colors.black)
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: allSubscription().length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: ExpansionTile(
                          textColor: Colors.black,
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  allSubscription()[index].balance,
                                  style: GoogleFonts.outfit(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  allSubscription()[index].date,
                                  style: GoogleFonts.outfit(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          leading: Icon(
                            allSubscription()[index].icon,
                            color: Colors.black,
                            size: 50,
                          ),
                          backgroundColor: allSubscription()[index].color,
                          tilePadding: const EdgeInsets.all(12),
                          childrenPadding: EdgeInsets.symmetric(horizontal: 18),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              )),
                          collapsedShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.black,
                                width: 1,
                              )),
                          collapsedBackgroundColor: Colors.transparent,
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                allSubscription()[index].title,
                                style: GoogleFonts.outfit(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                allSubscription()[index].details,
                                style: GoogleFonts.outfit(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 9.0),
                                        child: Row(
                                          children: [
                                            const Icon(LineIcons.creditCard,
                                                size: 38, color: Colors.black),
                                            const SizedBox(width: 8),
                                            Text('ending with',
                                                style: GoogleFonts.outfit(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black54)),
                                            const SizedBox(width: 5),
                                            Text(
                                                allSubscription()[index]
                                                    .cardNumber,
                                                style: GoogleFonts.outfit(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                border: Border.all(
                                                    color: Colors.black54),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Text('Manage',
                                                    style: GoogleFonts.outfit(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black54)),
                                              )))
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 9.0),
                                        child: Row(
                                          children: [
                                            const Icon(LineIcons.info,
                                                size: 38, color: Colors.black),
                                            const SizedBox(width: 8),
                                            Text('plan details',
                                                style: GoogleFonts.outfit(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black54)),
                                            const SizedBox(width: 5),
                                            Text(
                                                allSubscription()[index]
                                                    .details,
                                                style: GoogleFonts.outfit(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                border: Border.all(
                                                    color: Colors.black54),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Text('Manage',
                                                    style: GoogleFonts.outfit(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black54)),
                                              )))
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Divider(
                                    color: Colors.black54,
                                    thickness: 1,
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    width: double.infinity,
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              border: Border.all(
                                                  color: Colors.black54),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Text(
                                                    'Cancel Subscription',
                                                    style: GoogleFonts.outfit(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.white)),
                                              ),
                                            ))),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
