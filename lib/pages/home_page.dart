import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import '../components/cards.dart';
import '../components/subscriptions.dart';
import '../components/upcoming.dart';
import '../theme/colors.dart';
import 'all_subscription.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: [
                  Row(

                    children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'lib/images/perfil3.jpeg',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Sara Molina',
                      style: GoogleFonts.outfit(
                          fontSize: 24, fontWeight: FontWeight.w400),
                    )
                  ]),
                  const Icon(
                    LineIcons.plusCircle,
                    size: 38,
                    color: Colors.black54,
                  )
                ]),
              ),
              const SizedBox(height: 10),
              Cards(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming',
                        style: GoogleFonts.outfit(
                            fontSize: 24, fontWeight: FontWeight.w500)),
                    TextButton(
                    onPressed: () {}, 
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'View All',
                            style: GoogleFonts.outfit(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Icon(
                            LineIcons.arrowRight,
                            size: 20,
                            color: Colors.black54,
                          )
                        ],
                      ),
                    
                    ),


                  ),
                    
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Upcoming(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('All Subscriptions',
                        style: GoogleFonts.outfit(
                            fontSize: 24, fontWeight: FontWeight.w500)),
                    TextButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute
                        (builder: (context) => AllSubscription())
                      );
                    }, 
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'View All',
                            style: GoogleFonts.outfit(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Icon(
                            LineIcons.arrowRight,
                            size: 20,
                            color: Colors.black54,
                          )
                        ],
                      ),
                    
                    ),


                  ),
                    
                  ],
                ),
              ),
              Subscriptions(),
            ],
          ),
        ),
      
          bottomNavigationBar: FloatingNavbar(
            onTap: (int val) {},
            backgroundColor: Colors.black,
            selectedBackgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            borderRadius: 30,
            currentIndex: 0,
            elevation: 0,
            width: 280,
            padding : const EdgeInsets.only(bottom: 2, top: 2),
            margin : const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            items: [
              FloatingNavbarItem(icon: LineIcons.home),
              FloatingNavbarItem(icon: LineIcons.creditCard),
              FloatingNavbarItem(icon: LineIcons.search),
              FloatingNavbarItem(icon: LineIcons.cog),
            ],
          ),
      
    );
  }
}
