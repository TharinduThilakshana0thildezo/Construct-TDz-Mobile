import 'package:flutter/material.dart';

class CostEstimatorScreen extends StatefulWidget {
  const CostEstimatorScreen({super.key});

  @override
  State<CostEstimatorScreen> createState() => _CostEstimatorScreenState();
}

class _CostEstimatorScreenState extends State<CostEstimatorScreen> {
  double _area = 1500;
  int _qualityLevel = 1; // 0 = Standard, 1 = Premium, 2 = Luxury
  final double _baseRate = 12000; // LKR per sq ft

  double get _estimatedCost {
    var multiplier = 1.0;
    if (_qualityLevel == 1) multiplier = 1.5;
    if (_qualityLevel == 2) multiplier = 2.2;
    return _area * _baseRate * multiplier;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Cost Estimator', style: TextStyle(fontSize: 16)),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new, size: 18),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ),
    body: SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Estimate Your Build',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Get an instant approximate cost for your construction project based on current market rates in Sri Lanka.',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withAlpha(138),
                fontSize: 14,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 32),

            // Estimated Cost Card
            Hero(
              tag: 'cost_estimator_card',
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5A824).withAlpha(30),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color(0xFFE5A824).withAlpha(100),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Estimated Total Cost',
                        style: TextStyle(
                          color: Color(0xFFE5A824),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'LKR ${_estimatedCost.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '± 15% variance depending on location',
                        style: TextStyle(
                          fontSize: 11,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withAlpha(138),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 48),

            Text(
              'Total Area (Sq Ft)',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    value: _area,
                    min: 500,
                    max: 10000,
                    divisions: 95,
                    activeColor: const Color(0xFFE5A824),
                    inactiveColor:
                        Theme.of(context).dividerTheme.color ??
                        Colors.grey.shade300,
                    onChanged: (val) => setState(() => _area = val),
                  ),
                ),
                SizedBox(
                  width: 60,
                  child: Text(
                    '${_area.toInt()}',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32),

            Text(
              'Finish Quality',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 16),

            _qualityTile(0, 'Standard', 'Basic fittings, local materials'),
            const SizedBox(height: 12),
            _qualityTile(1, 'Premium', 'Imported fittings, high-end finishing'),
            const SizedBox(height: 12),
            _qualityTile(
              2,
              'Luxury',
              'Custom architectural details, smart home features',
            ),

            const SizedBox(height: 48),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Estimate saved! You can now attach it to a new project.',
                    ),
                  ),
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFFE5A824),
                foregroundColor:
                    Theme.of(
                      context,
                    ).filledButtonTheme.style?.foregroundColor?.resolve({}) ??
                    Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'Save Estimate',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget _qualityTile(int level, String title, String subtitle) {
    final isSelected = _qualityLevel == level;
    return InkWell(
      onTap: () => setState(() => _qualityLevel = level),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xFFE5A824).withAlpha(15)
              : Theme.of(context).cardTheme.color,
          border: Border.all(
            color: isSelected
                ? const Color(0xFFE5A824)
                : (Theme.of(context).dividerTheme.color ?? Colors.transparent),
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: isSelected
                  ? const Color(0xFFE5A824)
                  : Theme.of(context).colorScheme.onSurface.withAlpha(138),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withAlpha(138),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
