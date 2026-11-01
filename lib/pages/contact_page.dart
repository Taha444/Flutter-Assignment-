import 'package:flutter/material.dart';

import '../widgets/info_tile.dart';
import '../widgets/page_body.dart';
import '../widgets/page_header.dart';

/// Third and last page: name and contact details.
/// The AppBar back button returns to About.
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  static const String routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      body: const PageBody(
        children: [
          PageHeader(
            icon: Icons.contact_mail_rounded,
            title: 'Contact Page',
            subtitle: 'We would love to hear from you.',
          ),
          SizedBox(height: 28),
          InfoTile(
            icon: Icons.email_rounded,
            title: 'Email',
            subtitle: 'tetoelsalahy@gmail.com',
          ),
          InfoTile(
            icon: Icons.phone_rounded,
            title: 'Phone',
            subtitle: '+20 106 159 8622  ',
          ),
          InfoTile(
            icon: Icons.location_on_rounded,
            title: 'Location',
            subtitle: 'Kafr ASH El Shiekh, Egypt',
          ),
        ],
      ),
    );
  }
}
