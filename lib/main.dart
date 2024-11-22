import 'package:flutter/material.dart';
import 'membership_page.dart';
import 'admin_page.dart';
import 'messaging_page.dart';
import 'reporting_page.dart';
import 'settings_page.dart';
import 'mark_absentees_page.dart';
import 'help_manual_page.dart';
import 'downloads_page.dart';

void main() {
  runApp(GrowFlockApp());
}

class GrowFlockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GrowFlockDashboard(),
    );
  }
}

class GrowFlockDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GrowFlock Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Home button action
            },
          ),
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              // Quick Guide action
            },
          ),
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {
              // Help Videos action
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                // Dashboard action
              },
            ),
            ListTile(
              title: Text('Admin Panel'),
              onTap: () {
                // Admin Panel action
              },
            ),
            // Add other menu items here
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          _buildDashboardTile(
              context, 'Membership', Icons.group, MembershipPage()),
          _buildDashboardTile(
              context, 'Admin', Icons.admin_panel_settings, AdminPage()),
          _buildDashboardTile(
              context, 'Messaging', Icons.message, MessagingPage()),
          _buildDashboardTile(
              context, 'Reporting', Icons.report, ReportingPage()),
          _buildDashboardTile(
              context, 'Settings', Icons.settings, SettingsPage()),
          _buildDashboardTile(
              context, 'Mark Absentees', Icons.check_box, MarkAbsenteesPage()),
          _buildDashboardTile(
              context, 'Help Manual', Icons.book, HelpManualPage()),
          _buildDashboardTile(
              context, 'Downloads', Icons.download, DownloadsPage()),
        ],
      ),
    );
  }

  Widget _buildDashboardTile(
      BuildContext context, String title, IconData icon, Widget page) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50.0),
            SizedBox(height: 10.0),
            Text(title, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
