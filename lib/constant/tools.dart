import 'package:flutter/material.dart';

class Tool {
  final String id;
  final String name;
  final String privateKey;
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  Tool({
    required this.privateKey,
    required this.id,
    required this.name,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });
}

List<Tool> tools = [
  Tool(
    id: "1",
    name: "QR Code",
    privateKey: 'qr-code',
    icon: Icons.document_scanner_rounded,
    backgroundColor: (Colors.orange[50])!,
    iconColor: Colors.orange,
  ),
  Tool(
    id: "22",
    name: "Age Calculator",
    privateKey: 'age-calculator',
    icon: Icons.support_agent_sharp,
    backgroundColor: (Colors.brown[50])!,
    iconColor: Colors.brown,
  ),
  Tool(
    id: "2",
    name: "Watermark",
    privateKey: 'watermark',
    icon: Icons.branding_watermark_outlined,
    backgroundColor: (Colors.brown[50])!,
    iconColor: Colors.brown,
  ),
  Tool(
    id: "3",
    name: "eSign PDF",
    privateKey: "e-sign-pdf",
    icon: Icons.wifi_protected_setup_sharp,
    backgroundColor: (Colors.deepOrange[50])!,
    iconColor: Colors.deepOrange,
  ),
  Tool(
    id: "4",
    name: "Split PDF",
    icon: Icons.cut,
    privateKey: "split-pdf",
    backgroundColor: (Colors.blue[50])!,
    iconColor: Colors.blue,
  ),
  Tool(
    id: "5",
    name: "Marge PDF",
    privateKey: "marge-pdf",
    icon: Icons.vertical_split_outlined,
    backgroundColor: (Colors.deepOrange[50])!,
    iconColor: Colors.deepOrange,
  ),
  Tool(
    id: "6",
    name: "Protect PDF",
    privateKey: 'private-pdf',
    icon: Icons.lock_reset_outlined,
    backgroundColor: (Colors.green[50])!,
    iconColor: Colors.green,
  ),
  Tool(
    id: "7",
    name: "Compress PDF",
    privateKey: 'compress-pdf',
    icon: Icons.settings_input_component_rounded,
    backgroundColor: (Colors.deepOrange[50])!,
    iconColor: Colors.deepOrange,
  ),
  Tool(
    id: "8",
    name: "All tools",
    privateKey: 'all-tools',
    icon: Icons.grid_view_rounded,
    backgroundColor: (Colors.blue[50])!,
    iconColor: Colors.blue,
  )
];
