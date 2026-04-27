import '../models/project_model.dart';
import '../utils/logger.dart';

/// Service to calculate project-contractor matching scores
class ProjectMatchingService {
  /// Calculate match score between contractor and project (0-100)
  Future<double> calculateMatchScore({
    required List<String> projectSkillsRequired,
    required List<String> contractorSkills,
    required int projectBudget,
    required int contractorMinBudget,
    required int contractorMaxBudget,
    required String projectLocation,
    required String contractorServiceArea,
    required double contractorRating,
    required bool contractorAvailable,
  }) async {
    try {
      double score = 0;

      // Skill match (40% weight)
      final skillMatchPercent = _calculateSkillMatch(
        projectSkillsRequired,
        contractorSkills,
      );
      score += skillMatchPercent * 0.4;

      // Budget compatibility (25% weight)
      final budgetScore = _calculateBudgetScore(
        projectBudget,
        contractorMinBudget,
        contractorMaxBudget,
      );
      score += budgetScore * 0.25;

      // Location proximity (15% weight)
      final locationScore = _calculateLocationScore(
        projectLocation,
        contractorServiceArea,
      );
      score += locationScore * 0.15;

      // Reputation/Rating (15% weight)
      final reputationScore = (contractorRating / 5) * 100;
      score += reputationScore * 0.15;

      // Availability bonus (5% bonus if available)
      if (contractorAvailable) {
        score = (score * 1.05).clamp(0, 100).toDouble();
      }

      appLogger.info('Match score calculated: ${score.toStringAsFixed(1)}');
      return score.clamp(0, 100).toDouble();
    } catch (e) {
      appLogger.error('Error calculating match score', e);
      return 0;
    }
  }

  /// Get matching projects for a contractor
  Future<List<Map<String, dynamic>>> getRecommendedProjects({
    required List<Project> availableProjects,
    required List<String> contractorSkills,
    required int contractorMinBudget,
    required int contractorMaxBudget,
    required String contractorLocation,
    required double contractorRating,
  }) async {
    try {
      final matches = <Map<String, dynamic>>[];

      for (final project in availableProjects) {
        final score = await calculateMatchScore(
          projectSkillsRequired: project.skillsRequired,
          contractorSkills: contractorSkills,
          projectBudget: project.budgetLkr,
          contractorMinBudget: contractorMinBudget,
          contractorMaxBudget: contractorMaxBudget,
          projectLocation: project.district,
          contractorServiceArea: contractorLocation,
          contractorRating: contractorRating,
          contractorAvailable: true,
        );

        if (score >= 60) {
          // Only include projects with 60+ match score
          matches.add({
            'project': project,
            'matchScore': score,
            'matchReason': _generateMatchReason(score, project),
          });
        }
      }

      // Sort by match score
      matches.sort(
        (a, b) =>
            (b['matchScore'] as double).compareTo(a['matchScore'] as double),
      );

      return matches;
    } catch (e) {
      appLogger.error('Error getting recommended projects', e);
      return [];
    }
  }

  double _calculateSkillMatch(
    List<String> requiredSkills,
    List<String> contractorSkills,
  ) {
    if (requiredSkills.isEmpty) return 100;
    if (contractorSkills.isEmpty) return 0;

    final matchingSkills = requiredSkills
        .where(
          (skill) => contractorSkills.any(
            (cSkill) => cSkill.toLowerCase().contains(skill.toLowerCase()),
          ),
        )
        .length;

    return (matchingSkills / requiredSkills.length) * 100;
  }

  double _calculateBudgetScore(
    int projectBudget,
    int contractorMinBudget,
    int contractorMaxBudget,
  ) {
    if (projectBudget >= contractorMinBudget &&
        projectBudget <= contractorMaxBudget) {
      return 100;
    }

    if (projectBudget < contractorMinBudget) {
      // Project too small
      final percentBelow =
          (contractorMinBudget - projectBudget) / contractorMinBudget * 100;
      return (100 - percentBelow).clamp(0, 100).toDouble();
    }

    if (projectBudget > contractorMaxBudget) {
      // Project too large
      final percentAbove =
          (projectBudget - contractorMaxBudget) / projectBudget * 100;
      return (100 - percentAbove).clamp(0, 100).toDouble();
    }

    return 50;
  }

  double _calculateLocationScore(String projectLocation, String serviceArea) {
    // If service area includes project location
    if (serviceArea.contains(projectLocation)) return 100;

    // If within same region/province
    if (_isSameRegion(projectLocation, serviceArea)) return 75;

    // If willing to travel
    if (serviceArea.contains('Island-wide') || serviceArea.contains('All')) {
      return 50;
    }

    return 0;
  }

  bool _isSameRegion(String location1, String location2) {
    // Simplified region mapping
    const westernProvinceDistricts = ['Colombo', 'Gampaha', 'Kalutara'];

    return westernProvinceDistricts.contains(location1) &&
        westernProvinceDistricts.contains(location2);
  }

  String _generateMatchReason(double score, Project project) {
    if (score >= 85) return '🎯 Perfect Match - Highly recommended';
    if (score >= 70) return '✅ Good Match - Well-suited for this project';
    if (score >= 60) return '👍 Fair Match - Consider applying';
    return '';
  }
}

/// Service for user recommendations and personalization
class UserRecommendationService {
  /// Get personalized project recommendations based on user history
  Future<List<Project>> getPersonalizedRecommendations({
    required String userId,
    required List<Project> allProjects,
    required List<String> viewedProjectIds,
    required List<String> bidProjectIds,
    required List<String> completedProjectIds,
    required List<String> userSkills,
  }) async {
    try {
      // Filter out already viewed/bid projects
      final filtered = allProjects
          .where(
            (p) =>
                !viewedProjectIds.contains(p.projectId) &&
                !bidProjectIds.contains(p.projectId),
          )
          .toList();

      // Prioritize projects similar to completed ones
      filtered.sort((a, b) {
        final aScore = _calculateSimilarityScore(a, userSkills);
        final bScore = _calculateSimilarityScore(b, userSkills);
        return bScore.compareTo(aScore);
      });

      return filtered.take(10).toList();
    } catch (e) {
      appLogger.error('Error getting personalized recommendations', e);
      return [];
    }
  }

  double _calculateSimilarityScore(Project project, List<String> userSkills) {
    // Calculate overlap between project skills and user skills
    final overlappingSkills = project.skillsRequired
        .where(
          (skill) => userSkills.any(
            (uSkill) => uSkill.toLowerCase() == skill.toLowerCase(),
          ),
        )
        .length;

    return overlappingSkills / project.skillsRequired.length;
  }
}
