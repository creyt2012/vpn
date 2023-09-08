import 'package:Mortarvpn/core/providers/globals/ads_provider.dart';
import 'package:Mortarvpn/core/providers/globals/iap_provider.dart';
import 'package:Mortarvpn/core/resources/environment.dart';
import 'package:Mortarvpn/ui/components/custom_card.dart';
import 'package:Mortarvpn/ui/components/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

import '../components/ip_details.dart';

class ConnectionDetailScreen extends StatelessWidget {
  const ConnectionDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Connection Details"),
      ),
      body: ListView(padding: const EdgeInsets.all(10), children: [
        CustomCard(
          borderRadius: 25,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          boxShadow: BoxShadow(
            color: Colors.blue.withOpacity(0.9),
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
          child: const IpDetailWidget(),
        ),
        const ColumnDivider(),
        Consumer<IAPProvider>(
          builder: (context, value, child) => value.isPro
              ? const SizedBox.shrink()
              : CustomCard(
                  borderRadius: 25,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  boxShadow: BoxShadow(
                    color: Colors.blue.withOpacity(0.9),
                    blurRadius: 25,
                    offset: const Offset(0, 15),

                  ),
                  child: AdsProvider.bannerAd(bannerAdUnitID,
                      adsize: AdSize.mediumRectangle),
                ),
        ),
      ]),
    );
  }
}
