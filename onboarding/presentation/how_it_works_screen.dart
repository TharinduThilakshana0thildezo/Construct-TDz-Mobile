import 'package:flutter/material.dart';

/// Senior Engineer Solution: Interactive "How It Works" onboarding tutorial
/// This makes the app intuitive for beginners by showing exactly how everything works
///
/// PROBLEM SOLVED:
/// - Users were confused about what features do
/// - No guidance on workflows
/// - UI was too complex for beginners
///
/// SOLUTION:
/// - Step-by-step interactive tutorials
/// - Visual mockups of each feature
/// - Clear explanations of why features exist
class HowItWorksScreen extends StatefulWidget {
  const HowItWorksScreen({super.key});

  @override
  State<HowItWorksScreen> createState() => _HowItWorksScreenState();
}

class _HowItWorksScreenState extends State<HowItWorksScreen> {
  late PageController _pageController;
  int _currentStep = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final steps = _buildSteps();

    return Scaffold(
      appBar: AppBar(
        title: const Text('How ConstructionLK Works'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // PageView with tutorial steps
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _currentStep = index),
            itemCount: steps.length,
            itemBuilder: (context, index) => steps[index],
          ),

          // Bottom navigation
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color:
                        Theme.of(context).dividerTheme.color ??
                        Colors.transparent,
                  ),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Progress indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      steps.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: index == _currentStep
                              ? const Color(0xFFE5A824)
                              : Theme.of(
                                  context,
                                ).colorScheme.onSurface.withAlpha(77),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Action buttons
                  Row(
                    children: [
                      if (_currentStep > 0)
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              _pageController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: const Text('Back'),
                          ),
                        ),
                      if (_currentStep > 0) const SizedBox(width: 12),
                      Expanded(
                        child: FilledButton(
                          onPressed: () {
                            if (_currentStep == steps.length - 1) {
                              // Tutorial complete
                              Navigator.pop(context);
                            } else {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          child: Text(
                            _currentStep == steps.length - 1
                                ? 'Got It!'
                                : 'Next',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Step ${_currentStep + 1} of ${steps.length}',
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
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSteps() => [
      _TutorialStep(
        title: '🏗️ Post Your Project',
        subtitle: 'Share What You Need',
        description:
            'Tell contractors what you need built. Include project details, budget, and timeline.',
        sections: [
          _TutorialSection(
            icon: '📝',
            title: 'Give It a Name',
            detail: 'Example: "Residential house extension"',
          ),
          _TutorialSection(
            icon: '💰',
            title: 'Set Your Budget',
            detail: 'Example: Rs. 500,000 - 1,000,000',
          ),
          _TutorialSection(
            icon: '⏰',
            title: 'Set Timeline',
            detail: 'Example: 2 months',
          ),
          _TutorialSection(
            icon: '📎',
            title: 'Attach Files (Optional)',
            detail: 'Add floor plans, designs, or photos',
          ),
        ],
        benefit: '✓ Contractors can bid on your project',
      ),
      _TutorialStep(
        title: '📥 Receive Bids',
        subtitle: 'Compare Contractor Proposals',
        description:
            'Contractors see your project and submit bids. You\'ll get notified of each bid.',
        sections: [
          _TutorialSection(
            icon: '⭐',
            title: 'Check Their Rating',
            detail: 'See their experience and past projects',
          ),
          _TutorialSection(
            icon: '💵',
            title: 'Compare Prices',
            detail: 'Review their bid amount and timeline',
          ),
          _TutorialSection(
            icon: '👥',
            title: 'Review Their Profile',
            detail: 'See their credentials and reviews',
          ),
        ],
        benefit: '✓ Choose the best contractor for your project',
      ),
      _TutorialStep(
        title: '💬 Message & Negotiate',
        subtitle: 'Communicate Safely',
        description:
            'Chat with contractors to ask questions, clarify details, and negotiate if needed.',
        sections: [
          _TutorialSection(
            icon: '🔒',
            title: 'Encrypted Messages',
            detail: 'Your conversations are private and secure',
          ),
          _TutorialSection(
            icon: '❓',
            title: 'Ask Questions',
            detail: '"Can you start next month?" "What\'s included?"',
          ),
          _TutorialSection(
            icon: '🤝',
            title: 'Negotiate Terms',
            detail: 'Discuss price, timeline, and details',
          ),
        ],
        benefit: '✓ Make informed decisions before hiring',
      ),
      _TutorialStep(
        title: '✅ Hire & Pay Securely',
        subtitle: 'Safe Payment Process',
        description:
            'Deposit is held safely. Contractor starts work. You release payment when done.',
        sections: [
          _TutorialSection(
            icon: '1️⃣',
            title: 'You Send Deposit',
            detail: 'Held securely by ConstructionLK',
          ),
          _TutorialSection(
            icon: '2️⃣',
            title: 'Contractor Works',
            detail: 'You can track progress and communicate',
          ),
          _TutorialSection(
            icon: '3️⃣',
            title: 'Release Payment',
            detail: 'After you approve the work',
          ),
        ],
        benefit: '✓ Your money is protected throughout the project',
      ),
      _TutorialStep(
        title: '⭐ Review & Rate',
        subtitle: 'Help Others Find Great Contractors',
        description:
            'After project completion, rate your contractor. This helps build trust in the community.',
        sections: [
          _TutorialSection(
            icon: '⭐⭐⭐⭐⭐',
            title: 'Leave Your Rating',
            detail: '1-5 stars based on quality',
          ),
          _TutorialSection(
            icon: '📝',
            title: 'Write a Review',
            detail: 'Share your experience (optional)',
          ),
          _TutorialSection(
            icon: '🌟',
            title: 'Build Community Trust',
            detail: 'Ratings help everyone find great professionals',
          ),
        ],
        benefit: '✓ Help build a trusted construction community',
      ),
      _TutorialStep(
        title: '🎯 Additional Features',
        subtitle: 'Make the Most of ConstructionLK',
        description: 'Beyond posting projects, explore these powerful tools.',
        sections: [
          _TutorialSection(
            icon: '👥',
            title: 'Find Professionals',
            detail:
                'Browse contractors & engineers. Add to network before needing them.',
          ),
          _TutorialSection(
            icon: '💰',
            title: 'Cost Estimator',
            detail:
                'Get cost estimates for projects. Use for budgeting and comparing bids.',
          ),
          _TutorialSection(
            icon: '🏆',
            title: 'Build Reputation',
            detail:
                'Earn ratings and badges. Premium contractors get more opportunities.',
          ),
        ],
        benefit: '✓ Maximize your success on the platform',
      ),
    ];
}

class _TutorialStep extends StatelessWidget {

  const _TutorialStep({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.sections,
    required this.benefit,
  });
  final String title;
  final String subtitle;
  final String description;
  final List<_TutorialSection> sections;
  final String benefit;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title with large emoji
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFFE5A824),
            ),
          ),
          const SizedBox(height: 16),

          // Description card
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withAlpha(25),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary.withAlpha(77),
              ),
            ),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.onSurface,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Tutorial sections
          ...List.generate(
            sections.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: sections[index],
            ),
          ),

          const SizedBox(height: 20),

          // Benefit box
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFE5A824).withAlpha(25),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFE5A824).withAlpha(77)),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.check_circle,
                  color: Color(0xFFE5A824),
                  size: 20,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    benefit,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFE5A824),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 80), // Space for bottom navigation
        ],
      ),
    );
}

class _TutorialSection extends StatelessWidget {

  const _TutorialSection({
    required this.icon,
    required this.title,
    required this.detail,
  });
  final String icon;
  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).dividerTheme.color ?? Colors.transparent,
        ),
      ),
      child: Row(
        children: [
          Text(icon, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  detail,
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
    );
}
