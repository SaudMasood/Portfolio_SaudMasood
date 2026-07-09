
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const PortfolioApp());
}

const String kName = 'Saud Masood';
const String kTitle = 'Flutter Developer | AI & Machine Learning Enthusiast';
const String kLocation = 'Islamabad, Pakistan';
const String kEmail = 'saudmasood974@gmail.com';
const String kLinkedInUrl = 'https://linkedin.com/in/saud-masood-789898252';
const String kGitHubUrl = 'https://github.com/SaudMasood';
const String kProfileImage = 'assets/images/saud.jpg';
const String kInstagramUrl =
    'https://www.instagram.com/saudmasood974?igsh=MXY5ZnIwbTd1ZTlsaA==';

const String kYoutubeUrl =
    'https://youtube.com/@saudg974?si=WfQxRZovYczKoCAX';
const String kWhatsappUrl =
    'https://wa.me/923065059974?text=Hello%20Saud,%20I%20visited%20your%20portfolio%20and%20would%20like%20to%20connect.';
// TODO: replace with a real public link to your resume PDF.
const String cvDownloadUrl = 'https://github.com/SaudMasood/CV-PDF/blob/main/Saud%20Masood%20CV.pdf';

const String kAboutText =
    'I\'m a Flutter developer and AI/ML enthusiast who loves turning ideas '
    'into polished, cross-platform products. From building assistive '
    'technology like sign-language recognition apps to crafting clean, '
    'maintainable mobile experiences, I care about the details that make '
    'software feel premium — smooth performance, thoughtful UX, and code '
    'that\'s built to last. I\'m currently pursuing a BS in Computer Science '
    'and constantly exploring the intersection of mobile development and '
    'machine learning.';

class SkillItem {
  final String name;
  final IconData icon;
  const SkillItem(this.name, this.icon);
}

const List<SkillItem> kSkills = [
  SkillItem('Flutter', Icons.flutter_dash),
  SkillItem('Dart', Icons.code),
  SkillItem('Python', Icons.terminal),
  SkillItem('Java', Icons.local_cafe),
  SkillItem('TensorFlow', Icons.psychology),
  SkillItem('Firebase', Icons.local_fire_department),
  SkillItem('AI / ML', Icons.smart_toy),
  SkillItem('SQL', Icons.storage),
  SkillItem('MySQL', Icons.dns),
  SkillItem('MongoDB', Icons.data_usage),
  SkillItem('Hive', Icons.grid_view),
  SkillItem('Sqflite', Icons.sd_storage),
  SkillItem('REST APIs', Icons.api),
  SkillItem('Git', Icons.merge_type),
  SkillItem('GitHub', Icons.hub),
];

class TimelineEntry {
  final String title;
  final String subtitle;
  final String period;
  final String description;
  final IconData icon;
  const TimelineEntry({
    required this.title,
    required this.subtitle,
    required this.period,
    required this.description,
    required this.icon,
  });
}

const List<TimelineEntry> kTimeline = [
  TimelineEntry(
    title: 'BS Computer Science',
    subtitle: 'National Skills University',
    period: '2021 — 2025',
    description: 'CGPA 3.82 / 4.00. Focused on software engineering, '
        'mobile development, and applied machine learning.',
    icon: Icons.school,
  ),
  TimelineEntry(
    title: 'Python Programming Intern',
    subtitle: 'CodeAlpha — Remote',
    period: 'Jul — Aug 2024',
    description: 'Worked on real-world Python projects, strengthening '
        'problem-solving, scripting, and applied programming skills in a '
        'fully remote, fast-paced environment.',
    icon: Icons.work,
  ),
];

class ProjectItem {
  final String title;
  final String description;
  final List<String> tech;
  final IconData icon;
  const ProjectItem({
    required this.title,
    required this.description,
    required this.tech,
    required this.icon,
  });
}

const List<ProjectItem> kProjects = [
  ProjectItem(
    title: 'Sign Buddy',
    description:
    'AI-powered sign language recognition app that translates Pakistan '
        'Sign Language (PSL) gestures into text/speech in real time, built '
        'to help bridge communication for the deaf and hard-of-hearing '
        'community.',
    tech: ['Flutter', 'TensorFlow', 'Firebase', 'MediaPipe', 'AI/ML', 'PSL Dataset'],
    icon: Icons.pan_tool,
  ),
  ProjectItem(
    title: 'Face Emotion Detection System',
    description:
    'A computer vision system that detects human faces and classifies '
        'emotional states in real time using deep learning models trained '
        'on facial expression datasets.',
    tech: ['Python', 'Deep Learning', 'Computer Vision'],
    icon: Icons.face,
  ),
  ProjectItem(
    title: 'Metro Bus Update App',
    description:
    'A Flutter application providing live route information and '
        'service updates for metro bus commuters, backed by Firebase for '
        'real-time data sync.',
    tech: ['Flutter', 'Firebase'],
    icon: Icons.directions_bus,
  ),
  ProjectItem(
    title: 'To-Do List App',
    description:
    'A lightweight, offline-first task manager with local persistence, '
        'built to explore fast, reliable on-device storage patterns in '
        'Flutter.',
    tech: ['Flutter', 'Sqflite'],
    icon: Icons.check_circle,
  ),
  ProjectItem(
    title: 'Employee Management System',
    description:
    'A desktop-style application for managing employee records, '
        'attendance, and payroll data with a relational MySQL backend.',
    tech: ['Java', 'MySQL'],
    icon: Icons.groups,
  ),
];


class CertificationItem {
  final String title;
  final String issuer;
  final String verifyUrl;
  final IconData icon;

  const CertificationItem({
    required this.title,
    required this.issuer,
    required this.verifyUrl,
    required this.icon,
  });
}

const List<CertificationItem> kCertifications = [

  CertificationItem(
    title: 'Problem-Solving',
    issuer: 'Arizona State University',
    verifyUrl: 'https://coursera.org/verify/ZB31VDV775PZ',
    icon: Icons.psychology,
  ),

  CertificationItem(
    title: 'Web Development with HTML, CSS & JavaScript',
    issuer: 'IBM',
    verifyUrl: 'https://www.credly.com/badges/e13b9d27-0d3f-4067-a448-6ce90f11e0f9',
    icon: Icons.language,
  ),

  CertificationItem(
    title: 'CodeAlpha Python Internship',
    issuer: 'CodeAlpha',
    verifyUrl: 'https://www.linkedin.com/posts/saud-masood-789898252_pythoninternship-codealpha-codingjourney-share-7319189631214804992-ZeXl/?utm_source=share&utm_medium=member_desktop&rcm=ACoAAD5sU1kBynbAMceECXNGFV-7L3F5HrAzWeI',
    icon: Icons.work,
  ),

  CertificationItem(
    title: 'HEC National Skills Competency Test',
    issuer: 'HEC Pakistan',
    verifyUrl: 'https://nsct.hec.gov.pk/Result',
    icon: Icons.emoji_events,
  ),

  CertificationItem(
    title: 'Use AI as a Creative or Expert Partner',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/M920TP36TQLJ',
    icon: Icons.smart_toy,
  ),

  CertificationItem(
    title: 'Introduction to Python',
    issuer: 'Coursera Project Network',
    verifyUrl: 'https://coursera.org/verify/9W9UNK3Q18ZA',
    icon: Icons.code,
  ),

  CertificationItem(
    title: 'Flutter & Dart Mobile Apps',
    issuer: 'IBM',
    verifyUrl: 'https://coursera.org/verify/GWAYMDR86GU8',
    icon: Icons.flutter_dash,
  ),

  CertificationItem(
    title: 'Microsoft Word',
    issuer: 'Coursera',
    verifyUrl: 'https://coursera.org/verify/6X66MKI05ZOG',
    icon: Icons.description,
  ),

  CertificationItem(
    title: 'Advanced Flutter UI & State Management',
    issuer: 'Packt',
    verifyUrl: 'https://coursera.org/verify/5VL049TJJII2',
    icon: Icons.flutter_dash,
  ),

  CertificationItem(
    title: 'Generative AI for Everyone',
    issuer: 'DeepLearning.AI',
    verifyUrl: 'https://coursera.org/verify/N83Y3L0Y8W5D',
    icon: Icons.auto_awesome,
  ),

  CertificationItem(
    title: 'Firebase Integration',
    issuer: 'Packt',
    verifyUrl: 'https://coursera.org/verify/YE27PVGLU2PS',
    icon: Icons.local_fire_department,
  ),

  CertificationItem(
    title: 'Data Analysis using Pandas',
    issuer: 'Coursera',
    verifyUrl: 'https://coursera.org/verify/E5NBS7P8NLWS',
    icon: Icons.bar_chart,
  ),

  CertificationItem(
    title: 'Introduction to Web Development',
    issuer: 'IBM',
    verifyUrl: 'https://coursera.org/verify/GKU6JYXDUGSS',
    icon: Icons.web,
  ),

  CertificationItem(
    title: 'Business Presentations',
    issuer: 'Coursera',
    verifyUrl: 'https://coursera.org/verify/GP0WJKF29L9R',
    icon: Icons.present_to_all,
  ),

  CertificationItem(
    title: 'Introduction to JavaScript',
    issuer: 'Coursera',
    verifyUrl: 'https://coursera.org/verify/FIXUG0HWN8UG',
    icon: Icons.javascript,
  ),

  CertificationItem(
    title: 'Portfolio Website with HTML & CSS',
    issuer: 'Coursera',
    verifyUrl: 'https://coursera.org/verify/WWQ928L853Q8',
    icon: Icons.web_asset,
  ),

  CertificationItem(
    title: 'DigiSkills Freelancing',
    issuer: 'DigiSkills',
    verifyUrl: 'https://digiskills.pk/verify',
    icon: Icons.business_center,
  ),

  CertificationItem(
    title: 'DigiSkills Graphic Design',
    issuer: 'DigiSkills',
    verifyUrl: 'https://digiskills.pk/verify',
    icon: Icons.palette,
  ),

  CertificationItem(
    title: 'Getting Started with Flutter & Dart',
    issuer: 'Packt',
    verifyUrl: 'https://coursera.org/verify/OZPEME9Q9FOF',
    icon: Icons.flutter_dash,
  ),

  CertificationItem(
    title: 'Mobile Notifications & Publishing',
    issuer: 'SkillUp',
    verifyUrl: 'https://coursera.org/verify/5FAYG5I6TRIT',
    icon: Icons.phone_android,
  ),

  CertificationItem(
    title: 'Accelerate Your Job Search with AI',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/YEFIZ2LK1X2T',
    icon: Icons.work_outline,
  ),

  CertificationItem(
    title: 'Google IT Automation with Python',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/professional-cert/CHZEGH4L60N3',
    icon: Icons.terminal,
  ),

  CertificationItem(
    title: 'Automating Real-World Tasks with Python',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/1X4T8X3EXB1R',
    icon: Icons.code,
  ),

  CertificationItem(
    title: 'Troubleshooting & Debugging',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/0DH4NI1PLMMD',
    icon: Icons.bug_report,
  ),

  CertificationItem(
    title: 'Introduction to Git & GitHub',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/AJ1TGI57AYTZ',
    icon: Icons.source,
  ),

  CertificationItem(
    title: 'Python Operating System',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/34G8YYBA9PWL',
    icon: Icons.computer,
  ),

  CertificationItem(
    title: 'Crash Course on Python',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/X61U7YC376PX',
    icon: Icons.code,
  ),

  CertificationItem(
    title: 'Configuration Management & Cloud',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/9XRYOL9QYANB',
    icon: Icons.cloud,
  ),

  CertificationItem(
    title: 'Design Prompts',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/OD7G4FVSDXIH',
    icon: Icons.edit,
  ),

  CertificationItem(
    title: 'Google Prompting Essentials',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/specialization/XIXQ80ZCJO9L',
    icon: Icons.smart_toy,
  ),

  CertificationItem(
    title: 'Writing Prompts Like a Pro',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/J3XV4HBERWUO',
    icon: Icons.edit_note,
  ),

  CertificationItem(
    title: 'AI Data Analysis',
    issuer: 'Google',
    verifyUrl: 'https://coursera.org/verify/687FB9JBDJ5F',
    icon: Icons.analytics,
  ),

  CertificationItem(
    title: 'Front-End Developer Capstone',
    issuer: 'Meta',
    verifyUrl: 'https://coursera.org/verify/B5F4VEQIYCJW',
    icon: Icons.web,
  ),

  CertificationItem(
    title: 'Advanced React',
    issuer: 'Meta',
    verifyUrl: 'https://coursera.org/verify/YFLZ0LYT9WGC',
    icon: Icons.web_asset,
  ),

  CertificationItem(
    title: 'UX/UI Design',
    issuer: 'Meta',
    verifyUrl: 'https://coursera.org/verify/FIFAVHIYU0B5',
    icon: Icons.design_services,
  ),

  CertificationItem(
    title: 'Coding Interview Preparation',
    issuer: 'Meta',
    verifyUrl: 'https://coursera.org/verify/1BAE25YAUPEP',
    icon: Icons.quiz,
  ),

  CertificationItem(
    title: 'HTML & CSS in Depth',
    issuer: 'Meta',
    verifyUrl: 'https://coursera.org/verify/QQTT3MDGW3GP',
    icon: Icons.html,
  ),

  CertificationItem(
    title: 'Introduction to Front-End Development',
    issuer: 'Meta',
    verifyUrl: 'https://coursera.org/verify/1FQMJ4CCX1BE',
    icon: Icons.web,
  ),

  CertificationItem(
    title: 'Programming with JavaScript',
    issuer: 'Meta',
    verifyUrl: 'https://coursera.org/verify/J0BRHFNMLGVJ',
    icon: Icons.javascript,
  ),

  CertificationItem(
    title: 'React Basics',
    issuer: 'Meta',
    verifyUrl: 'https://coursera.org/verify/YYJ81B7D7GLD',
    icon: Icons.web_asset,
  ),

  CertificationItem(
    title: 'Version Control',
    issuer: 'Meta',
    verifyUrl: 'https://coursera.org/verify/FVDXAFVBP6I4',
    icon: Icons.source,
  ),
];


class AchievementItem {
  final String title;
  final String subtitle;
  final IconData icon;
  const AchievementItem({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

const List<AchievementItem> kAchievements = [
  AchievementItem(
    title: 'HEC NSCT — 64th Percentile',
    subtitle: 'National level scholarship test performance',
    icon: Icons.emoji_events,
  ),
  AchievementItem(
    title: 'PM Youth Laptop Scheme Awardee',
    subtitle: 'Selected under the Prime Minister\'s Youth Laptop Scheme',
    icon: Icons.laptop_mac,
  ),
  AchievementItem(
    title: 'CGPA 3.82 / 4.00',
    subtitle: 'Consistent academic excellence throughout the degree',
    icon: Icons.star,
  ),
];

// =============================================================================
// RESPONSIVE HELPERS
// =============================================================================

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 650 &&
          MediaQuery.of(context).size.width < 1024;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;
  static bool isLargeDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1440;

  /// Smoothly scales a value between [min] (at [minWidth]) and [max] (at
  /// [maxWidth]) based on the current screen width — used to avoid jarring
  /// jumps between breakpoints for things like hero typography.
  static double scale(
      BuildContext context, {
        required double min,
        required double max,
        double minWidth = 360,
        double maxWidth = 1440,
      }) {
    final width = MediaQuery.of(context).size.width;
    final t = ((width - minWidth) / (maxWidth - minWidth)).clamp(0.0, 1.0);
    return min + (max - min) * t;
  }
}

// =============================================================================
// ROOT APP — handles Material 3 theming and light/dark mode toggling.
// =============================================================================

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  ThemeMode _themeMode = ThemeMode.dark;

  void _toggleTheme() {
    setState(() {
      _themeMode =
      _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  static const Color _seed = Color(0xFF6C5CE7); // premium indigo/purple
  static const Color _accent = Color(0xFF00B8A9); // teal accent

  ThemeData _buildTheme(Brightness brightness) {
    final scheme = ColorScheme.fromSeed(
      seedColor: _seed,
      brightness: brightness,
      secondary: _accent,
    );
    final isDark = brightness == Brightness.dark;
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.surface,
      fontFamily: 'Roboto',
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontWeight: FontWeight.w800, height: 1.1),
        displayMedium: TextStyle(fontWeight: FontWeight.w800, height: 1.1),
        headlineMedium: TextStyle(fontWeight: FontWeight.w800, height: 1.2),
        headlineSmall: TextStyle(fontWeight: FontWeight.w700, height: 1.2),
        titleLarge: TextStyle(fontWeight: FontWeight.w700),
        titleMedium: TextStyle(fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(height: 1.55, fontSize: 16),
        bodyMedium: TextStyle(height: 1.5, fontSize: 14.5),
        labelLarge: TextStyle(fontWeight: FontWeight.w700),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        foregroundColor: scheme.onSurface,
      ),
      cardTheme: CardThemeData(
        elevation: isDark ? 0 : 1,
        color: scheme.surfaceContainerHigh,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: scheme.surfaceContainerHighest,
        labelStyle: TextStyle(
          color: scheme.onSurface,
          fontWeight: FontWeight.w600,
          fontSize: 13,
        ),
        side: BorderSide(color: scheme.outlineVariant),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          side: BorderSide(color: scheme.outline),
          textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: scheme.surfaceContainerHighest,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      ),
      dividerTheme: DividerThemeData(color: scheme.outlineVariant, space: 48),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saud Masood | Portfolio',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: _buildTheme(Brightness.light),
      darkTheme: _buildTheme(Brightness.dark),
      home: HomePage(
        isDark: _themeMode == ThemeMode.dark,
        onToggleTheme: _toggleTheme,
      ),
    );
  }
}

// =============================================================================
// SMALL REUSABLE ANIMATION / INTERACTION WIDGETS
// =============================================================================

/// Fades + slides its child into view shortly after being built.
/// Used everywhere to give the page a gentle staggered "reveal" feel
/// without requiring any external scroll-visibility packages.
class FadeSlideIn extends StatefulWidget {
  final Widget child;
  final Duration delay;
  const FadeSlideIn({super.key, required this.child, this.delay = Duration.zero});

  @override
  State<FadeSlideIn> createState() => _FadeSlideInState();
}

class _FadeSlideInState extends State<FadeSlideIn> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(widget.delay, () {
      if (mounted) setState(() => _visible = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1 : 0,
      duration: const Duration(milliseconds: 650),
      curve: Curves.easeOut,
      child: AnimatedSlide(
        offset: _visible ? Offset.zero : const Offset(0, 0.06),
        duration: const Duration(milliseconds: 650),
        curve: Curves.easeOut,
        child: widget.child,
      ),
    );
  }
}

/// Adds a subtle scale + shadow-lift effect on hover (web/desktop) while
/// remaining a no-op (but harmless) on touch devices.
class HoverLift extends StatefulWidget {
  final Widget child;
  final double scale;
  const HoverLift({super.key, required this.child, this.scale = 1.03});

  @override
  State<HoverLift> createState() => _HoverLiftState();
}

class _HoverLiftState extends State<HoverLift> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: AnimatedScale(
        scale: _hovering ? widget.scale : 1.0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: _hovering
                ? [
              BoxShadow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.25),
                blurRadius: 24,
                offset: const Offset(0, 12),
              ),
            ]
                : [],
          ),
          child: widget.child,
        ),
      ),
    );
  }
}

/// Consistent section width/padding wrapper.
class SectionContainer extends StatelessWidget {
  final Widget child;
  final Color? background;
  final GlobalKey? sectionKey;

  const SectionContainer({
    super.key,
    required this.child,
    this.background,
    this.sectionKey,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final hPad = width < 650 ? 20.0 : (width < 1024 ? 48.0 : 96.0);
    return Container(
      key: sectionKey,
      width: double.infinity,
      color: background,
      padding: EdgeInsets.symmetric(horizontal: hPad, vertical: 72),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: child,
        ),
      ),
    );
  }
}

/// Standard "kicker + title + accent underline" section heading.
class SectionHeading extends StatelessWidget {
  final String kicker;
  final String title;
  final CrossAxisAlignment alignment;

  const SectionHeading({
    super.key,
    required this.kicker,
    required this.title,
    this.alignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FadeSlideIn(
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          Text(
            kicker.toUpperCase(),
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.primary,
              letterSpacing: 3,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: alignment == CrossAxisAlignment.center
                ? TextAlign.center
                : TextAlign.start,
            style: theme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 14),
          Container(
            width: 64,
            height: 4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [theme.colorScheme.primary, theme.colorScheme.secondary],
              ),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          const SizedBox(height: 36),
        ],
      ),
    );
  }
}

/// A round social/contact icon button with a soft container background.
class SocialIconButton extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  const SocialIconButton({
    super.key,
    required this.icon,
    required this.tooltip,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Tooltip(
      message: tooltip,
      child: HoverLift(
        scale: 1.12,
        child: Material(
          color: scheme.surfaceContainerHighest,
          shape: const CircleBorder(),
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Icon(icon, size: 20, color: scheme.primary),
            ),
          ),
        ),
      ),
    );
  }
}

// =============================================================================
// HOME PAGE — orchestrates navigation, scrolling, and all sections.
// =============================================================================

class HomePage extends StatefulWidget {
  final bool isDark;
  final VoidCallback onToggleTheme;
  const HomePage({super.key, required this.isDark, required this.onToggleTheme});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;
  int _activeSectionIndex = 0;
  bool _showBackToTopFab = false;

  // Keys used to scroll to each section.
  final _heroKey = GlobalKey();
  final _aboutKey = GlobalKey();
  final _experienceKey = GlobalKey();
  final _skillsKey = GlobalKey();
  final _projectsKey = GlobalKey();
  final _certificationsKey = GlobalKey();
  final _achievementsKey = GlobalKey();
  final _contactKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  /// Single scroll listener that drives: the nav bar's scrolled state, the
  /// currently-active nav item (for highlighting), and the back-to-top FAB.
  void _onScroll() {
    final scrolled = _scrollController.offset > 12;
    final showFab = _scrollController.offset > 480;
    final newIndex = _computeActiveSectionIndex();
    if (scrolled != _isScrolled ||
        showFab != _showBackToTopFab ||
        newIndex != _activeSectionIndex) {
      setState(() {
        _isScrolled = scrolled;
        _showBackToTopFab = showFab;
        _activeSectionIndex = newIndex;
      });
    }
  }

  /// Figures out which section is currently nearest the top of the viewport
  /// so the nav bar can highlight it — purely a visual nicety, no external
  /// scroll-tracking package required.
  int _computeActiveSectionIndex() {
    const threshold = 160.0;
    int activeIndex = 0;
    final items = _navItems;
    for (var i = 0; i < items.length; i++) {
      final ctx = items[i].key.currentContext;
      if (ctx == null) continue;
      final box = ctx.findRenderObject() as RenderBox?;
      if (box == null || !box.attached) continue;
      final top = box.localToGlobal(Offset.zero).dy;
      if (top <= threshold) {
        activeIndex = i;
      }
    }
    return activeIndex;
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollTo(GlobalKey key) {
    final ctx = key.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not open $url')),
      );
    }
  }

  Future<void> _launchEmail({String subject = '', String body = ''}) async {
    final uri = Uri(
      scheme: 'mailto',
      path: kEmail,
      query: 'subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}',
    );
    final ok = await launchUrl(uri);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open your email app.')),
      );
    }
  }

  List<_NavItem> get _navItems => [
    _NavItem('About', _aboutKey),
    _NavItem('Experience', _experienceKey),
    _NavItem('Skills', _skillsKey),
    _NavItem('Projects', _projectsKey),
    _NavItem('Certifications', _certificationsKey),
    _NavItem('Achievements', _achievementsKey),
    _NavItem('Contact', _contactKey),
  ];

  @override
  Widget build(BuildContext context) {
    final isMobileOrTablet = !Responsive.isDesktop(context);
    return Scaffold(
      drawer: isMobileOrTablet ? _buildDrawer(context) : null,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "whatsapp",
            backgroundColor: const Color(0xFF25D366),
            tooltip: "Chat on WhatsApp",
            onPressed: () => _launchUrl(kWhatsappUrl),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'assets/images/a.png',
              ),
            ),
          ),

          const SizedBox(height: 16),

          AnimatedScale(
            scale: _showBackToTopFab ? 1 : 0,
            duration: const Duration(milliseconds: 200),
            child: AnimatedOpacity(
              opacity: _showBackToTopFab ? 1 : 0,
              duration: const Duration(milliseconds: 200),
              child: FloatingActionButton(
                heroTag: "top",
                tooltip: "Back to Top",
                onPressed: () => _scrollTo(_heroKey),
                child: const Icon(Icons.arrow_upward),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  const SizedBox(height: 88), // space for fixed nav bar
                  HeroSection(
                    key: _heroKey,
                    onDownloadCv: () => _launchUrl(cvDownloadUrl),
                    onGitHub: () => _launchUrl(kGitHubUrl),
                    onLinkedIn: () => _launchUrl(kLinkedInUrl),
                    onInstagram: () => _launchUrl(kInstagramUrl),
                    onYoutube: () => _launchUrl(kYoutubeUrl),
                    onContact: () => _scrollTo(_contactKey),
                  ),

                  AboutSection(sectionKey: _aboutKey),
                  ExperienceSection(sectionKey: _experienceKey),
                  SkillsSection(sectionKey: _skillsKey),
                  ProjectsSection(
                    sectionKey: _projectsKey,
                    onViewOnGitHub: () => _launchUrl(kGitHubUrl),
                  ),
                  CertificationsSection(sectionKey: _certificationsKey),
                  AchievementsSection(sectionKey: _achievementsKey),

                  ContactSection(
                    sectionKey: _contactKey,
                    onSendEmail: _launchEmail,
                    onGitHub: () => _launchUrl(kGitHubUrl),
                    onLinkedIn: () => _launchUrl(kLinkedInUrl),
                    onWhatsapp: () => _launchUrl(kWhatsappUrl),
                  ),
                  FooterSection(
                    onGitHub: () => _launchUrl(kGitHubUrl),
                    onLinkedIn: () => _launchUrl(kLinkedInUrl),
                    onEmail: () => _launchEmail(),
                    onBackToTop: () => _scrollTo(_heroKey),
                  ),
                ],
              ),
            ),
            _buildNavBar(context, isMobileOrTablet),
          ],
        ),
      ),
    );
  }

  Widget _buildNavBar(BuildContext context, bool isMobileOrTablet) {
    final scheme = Theme.of(context).colorScheme;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: 88,
      decoration: BoxDecoration(
        color: _isScrolled
            ? scheme.surface.withOpacity(0.92)
            : scheme.surface.withOpacity(0.0),
        boxShadow: _isScrolled
            ? [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ]
            : [],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 16 : 48,
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () => _scrollTo(_heroKey),
              child: Row(
                children: [
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [scheme.primary, scheme.secondary],
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'SM',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  if (!Responsive.isMobile(context))
                    Text(
                      kName,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                ],
              ),
            ),
            const Spacer(),
            if (!isMobileOrTablet)
              Row(
                children: List.generate(_navItems.length, (i) {
                  final item = _navItems[i];
                  final isActive = i == _activeSectionIndex;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: TextButton(
                      onPressed: () => _scrollTo(item.key),
                      style: TextButton.styleFrom(
                        foregroundColor: isActive
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurface,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            item.label,
                            style: TextStyle(
                              fontWeight:
                              isActive ? FontWeight.w700 : FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            height: 2,
                            width: isActive ? 18 : 0,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            const SizedBox(width: 8),
            IconButton(
              tooltip: widget.isDark ? 'Switch to light mode' : 'Switch to dark mode',
              onPressed: widget.onToggleTheme,
              icon: Icon(widget.isDark ? Icons.light_mode : Icons.dark_mode),
            ),
            if (isMobileOrTablet)
              Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 24),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Text(
                kName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Divider(height: 32),
            for (var i = 0; i < _navItems.length; i++)
              ListTile(
                leading: Icon(
                  Icons.circle,
                  size: 8,
                  color: i == _activeSectionIndex
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                ),
                title: Text(
                  _navItems[i].label,
                  style: TextStyle(
                    fontWeight: i == _activeSectionIndex
                        ? FontWeight.w700
                        : FontWeight.w500,
                    color: i == _activeSectionIndex
                        ? Theme.of(context).colorScheme.primary
                        : null,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Future.delayed(const Duration(milliseconds: 200), () {
                    _scrollTo(_navItems[i].key);
                  });
                },
              ),
          ],
        ),
      ),
    );
  }
}

class _NavItem {
  final String label;
  final GlobalKey key;
  _NavItem(this.label, this.key);
}

// =============================================================================
// HERO SECTION — animated intro with gradient background.
// =============================================================================

class HeroSection extends StatefulWidget {
  final VoidCallback onDownloadCv;
  final VoidCallback onGitHub;
  final VoidCallback onLinkedIn;
  final VoidCallback onInstagram;
  final VoidCallback onYoutube;
  final VoidCallback onContact;
  const HeroSection({
    super.key,
    required this.onDownloadCv,
    required this.onGitHub,
    required this.onLinkedIn,
    required this.onInstagram,
    required this.onYoutube,
    required this.onContact,
  });

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _imageAnim;
  late final Animation<Offset> _textSlide;
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    )..forward();
    _imageAnim = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.7, curve: Curves.easeOutBack),
    );
    _textSlide = Tween<Offset>(begin: const Offset(0, 0.15), end: Offset.zero)
        .animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.2, 1.0, curve: Curves.easeOut),
    ));
    _fade = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.2, 1.0, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDesktop = Responsive.isDesktop(context);

    final profileImage = ScaleTransition(
      scale: _imageAnim,
      child: Container(
        width: isDesktop ? 300 : 200,
        height: isDesktop ? 300 : 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [scheme.primary, scheme.secondary],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: scheme.primary.withOpacity(0.35),
              blurRadius: 40,
              offset: const Offset(0, 20),
            ),
          ],
        ),
        padding: const EdgeInsets.all(6),
        child: ClipOval(
          child: Image.asset(
            kProfileImage,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              color: scheme.surfaceContainerHighest,
              alignment: Alignment.center,
              child: Text(
                'SM',
                style: TextStyle(
                  fontSize: isDesktop ? 72 : 48,
                  fontWeight: FontWeight.w800,
                  color: scheme.primary,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    final textColumn = FadeTransition(
      opacity: _fade,
      child: SlideTransition(
        position: _textSlide,
        child: Column(
          crossAxisAlignment:
          isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          children: [
            Text(
              'Hello, I\'m',
              textAlign: isDesktop ? TextAlign.start : TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: scheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              kName,
              textAlign: isDesktop ? TextAlign.start : TextAlign.center,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: Responsive.scale(context, min: 30, max: 52),
              ),
            ),
            const SizedBox(height: 14),
            Text(
              kTitle,
              textAlign: isDesktop ? TextAlign.start : TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: scheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
                fontSize: Responsive.scale(context, min: 15, max: 20),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment:
              isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_outlined, size: 18, color: scheme.primary),
                const SizedBox(width: 6),
                Text(kLocation, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            const SizedBox(height: 28),
            Wrap(
              alignment: isDesktop ? WrapAlignment.start : WrapAlignment.center,
              spacing: 32,
              runSpacing: 16,
              children: [
                _HeroStat(value: '${kProjects.length}+', label: 'Projects'),
                _HeroStat(value: '${kCertifications.length}+', label: 'Certifications'),
                const _HeroStat(value: '3.82', label: 'CGPA'),
              ],
            ),
            const SizedBox(height: 32),
            Wrap(
              alignment: isDesktop ? WrapAlignment.start : WrapAlignment.center,
              spacing: 14,
              runSpacing: 14,
              children: [
                ElevatedButton.icon(
                  onPressed: widget.onDownloadCv,
                  icon: const Icon(Icons.download_rounded),
                  label: const Text('Download CV'),
                ),
                OutlinedButton.icon(
                  onPressed: widget.onGitHub,
                  icon: const Icon(Icons.code),
                  label: const Text('GitHub'),
                ),
                OutlinedButton.icon(
                  onPressed: widget.onLinkedIn,
                  icon: const Icon(Icons.business_center_outlined),
                  label: const Text('LinkedIn'),
                ),
                const SizedBox(width: 10),

                OutlinedButton.icon(
                  onPressed: widget.onInstagram,
                  icon: const Icon(Icons.camera_alt_outlined),
                  label: const Text("Instagram"),
                ),

                OutlinedButton.icon(
                  onPressed: widget.onYoutube,
                  icon: const Icon(Icons.play_circle_outline),
                  label: const Text("YouTube"),
                ),
                TextButton.icon(
                  onPressed: widget.onContact,
                  icon: const Icon(Icons.mail_outline),
                  label: const Text('Contact Me'),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    return Container(
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            scheme.primary.withOpacity(0.12),
            scheme.secondary.withOpacity(0.06),
            Colors.transparent,
          ],
        ),
      ),
      child: Stack(
        children: [
          // Purely decorative soft blobs for a premium "mesh gradient" feel.
          // Ignored for hit-testing so they never block interactions.
          Positioned(
            top: -80,
            right: -60,
            child: IgnorePointer(
              child: Container(
                width: 260,
                height: 260,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: scheme.primary.withOpacity(0.10),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -100,
            left: -80,
            child: IgnorePointer(
              child: Container(
                width: 320,
                height: 320,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: scheme.secondary.withOpacity(0.08),
                ),
              ),
            ),
          ),
          SectionContainer(
            child: isDesktop
                ? Row(
              children: [
                Expanded(flex: 5, child: textColumn),
                const SizedBox(width: 48),
                Expanded(flex: 4, child: Center(child: profileImage)),
              ],
            )
                : Column(
              children: [
                profileImage,
                const SizedBox(height: 40),
                textColumn,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// A small stat block used in the hero (e.g. "5+ Projects").
class _HeroStat extends StatelessWidget {
  final String value;
  final String label;
  const _HeroStat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: scheme.primary,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: scheme.onSurfaceVariant,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}

// =============================================================================
// ABOUT SECTION
// =============================================================================

class AboutSection extends StatelessWidget {
  final GlobalKey sectionKey;
  const AboutSection({super.key, required this.sectionKey});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final scheme = Theme.of(context).colorScheme;

    final infoCard = FadeSlideIn(
      delay: const Duration(milliseconds: 150),
      child: Container(
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Education', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            _infoRow(context, Icons.school, 'BS Computer Science'),
            _infoRow(context, Icons.apartment, 'National Skills University'),
            _infoRow(context, Icons.grade, 'CGPA: 3.82 / 4.00'),
            const Divider(height: 40),
            Text('Contact', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            _infoRow(context, Icons.location_on_outlined, kLocation),
            _infoRow(context, Icons.email_outlined, kEmail),
          ],
        ),
      ),
    );

    final aboutText = FadeSlideIn(
      child: Text(
        kAboutText,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: scheme.onSurfaceVariant,
        ),
      ),
    );

    return SectionContainer(
      sectionKey: sectionKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(kicker: 'Get to know me', title: 'About Me'),
          isDesktop
              ? IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 6, child: aboutText),
                const SizedBox(width: 48),
                Expanded(flex: 5, child: infoCard),
              ],
            ),
          )
              : Column(
            children: [
              aboutText,
              const SizedBox(height: 32),
              infoCard,
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoRow(BuildContext context, IconData icon, String text) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, size: 18, color: scheme.primary),
          const SizedBox(width: 10),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// EXPERIENCE / EDUCATION TIMELINE SECTION
// =============================================================================

class ExperienceSection extends StatelessWidget {
  final GlobalKey sectionKey;
  const ExperienceSection({super.key, required this.sectionKey});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      sectionKey: sectionKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(kicker: 'My journey', title: 'Experience & Education'),
          Column(
            children: List.generate(kTimeline.length, (index) {
              final entry = kTimeline[index];
              final isLast = index == kTimeline.length - 1;
              return FadeSlideIn(
                delay: Duration(milliseconds: 120 * index),
                child: _TimelineTile(entry: entry, isLast: isLast),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class _TimelineTile extends StatelessWidget {
  final TimelineEntry entry;
  final bool isLast;
  const _TimelineTile({required this.entry, required this.isLast});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [scheme.primary, scheme.secondary],
                  ),
                ),
                alignment: Alignment.center,
                child: Icon(entry.icon, color: Colors.white, size: 22),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    color: scheme.outlineVariant,
                  ),
                ),
            ],
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: scheme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: scheme.outlineVariant),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 12,
                      runSpacing: 8,
                      children: [
                        Text(entry.title, style: Theme.of(context).textTheme.titleLarge),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: scheme.primary.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            entry.period,
                            style: TextStyle(
                              color: scheme.primary,
                              fontWeight: FontWeight.w700,
                              fontSize: 12.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      entry.subtitle,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: scheme.secondary,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      entry.description,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// SKILLS SECTION — animated staggered chips.
// =============================================================================

class SkillsSection extends StatelessWidget {
  final GlobalKey sectionKey;
  const SkillsSection({super.key, required this.sectionKey});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      sectionKey: sectionKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(kicker: 'What I work with', title: 'Technical Skills'),
          Wrap(
            spacing: 14,
            runSpacing: 14,
            children: List.generate(kSkills.length, (index) {
              final skill = kSkills[index];
              return FadeSlideIn(
                delay: Duration(milliseconds: 40 * index),
                child: _SkillChip(skill: skill),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class _SkillChip extends StatelessWidget {
  final SkillItem skill;
  const _SkillChip({required this.skill});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return HoverLift(
      scale: 1.06,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(skill.icon, size: 18, color: scheme.primary),
            const SizedBox(width: 10),
            Text(
              skill.name,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// PROJECTS SECTION — responsive card grid.
// =============================================================================

class ProjectsSection extends StatelessWidget {
  final GlobalKey sectionKey;
  final VoidCallback onViewOnGitHub;
  const ProjectsSection({
    super.key,
    required this.sectionKey,
    required this.onViewOnGitHub,
  });

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      sectionKey: sectionKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(kicker: 'What I\'ve built', title: 'Featured Projects'),
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final columns = width < 620 ? 1 : (width < 980 ? 2 : 3);
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: kProjects.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24,
                  mainAxisExtent: 360,
                ),
                itemBuilder: (context, index) {
                  return FadeSlideIn(
                    delay: Duration(milliseconds: 100 * index),
                    child: _ProjectCard(
                      project: kProjects[index],
                      onViewOnGitHub: onViewOnGitHub,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final ProjectItem project;
  final VoidCallback onViewOnGitHub;
  const _ProjectCard({required this.project, required this.onViewOnGitHub});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return HoverLift(
      scale: 1.02,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [scheme.primary, scheme.secondary],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Icon(project.icon, color: Colors.white, size: 26),
                ),
                const Spacer(),
                Tooltip(
                  message: 'View on GitHub',
                  child: IconButton(
                    onPressed: onViewOnGitHub,
                    icon: Icon(Icons.open_in_new_rounded, color: scheme.primary),
                    visualDensity: VisualDensity.compact,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Text(
              project.title,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Text(
                project.description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 14),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: project.tech
                  .map(
                    (t) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: scheme.primary.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    t,
                    style: TextStyle(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w600,
                      color: scheme.primary,
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// CERTIFICATIONS SECTION
// =============================================================================

class CertificationsSection extends StatelessWidget {
  final GlobalKey sectionKey;
  const CertificationsSection({super.key, required this.sectionKey});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      sectionKey: sectionKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(kicker: 'Continuous learning', title: 'Certifications'),
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final columns = width < 560 ? 1 : (width < 900 ? 2 : 4);
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: kCertifications.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 270,
                ),
                itemBuilder: (context, index) {
                  final cert = kCertifications[index];
                  return FadeSlideIn(
                    delay: Duration(milliseconds: 90 * index),
                    child: _CertificationCard(cert: cert),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _CertificationCard extends StatelessWidget {
  final CertificationItem cert;
  const _CertificationCard({required this.cert});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return HoverLift(
      scale: 1.03,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(cert.icon, color: scheme.primary, size: 30),
            const SizedBox(height: 14),
            Text(
              cert.title,
              style: Theme.of(context).textTheme.titleMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),
            Text(
              cert.issuer,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: () async {
                final uri = Uri.parse(cert.verifyUrl);
                await launchUrl(
                  uri,
                  mode: LaunchMode.externalApplication,
                );
              },
              icon: const Icon(Icons.verified, size: 18),
              label: const Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// ACHIEVEMENTS SECTION
// =============================================================================

class AchievementsSection extends StatelessWidget {
  final GlobalKey sectionKey;
  const AchievementsSection({super.key, required this.sectionKey});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      sectionKey: sectionKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(kicker: 'Milestones', title: 'Achievements'),
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final columns = width < 620 ? 1 : (width < 980 ? 2 : 3);
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: kAchievements.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 180,
                ),
                itemBuilder: (context, index) {
                  final item = kAchievements[index];
                  return FadeSlideIn(
                    delay: Duration(milliseconds: 90 * index),
                    child: _AchievementCard(item: item),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _AchievementCard extends StatelessWidget {
  final AchievementItem item;
  const _AchievementCard({required this.item});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return HoverLift(
      scale: 1.03,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              scheme.primary.withOpacity(0.10),
              scheme.secondary.withOpacity(0.06),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: scheme.primary.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Icon(item.icon, color: scheme.primary),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item.subtitle,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
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

// =============================================================================
// CONTACT SECTION — validated form + direct contact info.
// =============================================================================

class ContactSection extends StatefulWidget {
  final GlobalKey sectionKey;
  final Future<void> Function({String subject, String body}) onSendEmail;
  final VoidCallback onGitHub;
  final VoidCallback onLinkedIn;
  final VoidCallback onWhatsapp;

  const ContactSection({
    super.key,
    required this.sectionKey,
    required this.onSendEmail,
    required this.onGitHub,
    required this.onLinkedIn,
    required this.onWhatsapp,
  });

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  bool _sending = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _sending = true);
    final subject = 'Portfolio contact from ${_nameController.text.trim()}';
    final body =
        '${_messageController.text.trim()}\n\n— ${_nameController.text.trim()} (${_emailController.text.trim()})';
    await widget.onSendEmail(subject: subject, body: body);
    if (mounted) {
      setState(() => _sending = false);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Opening your email app to send the message...')),
      );
      _formKey.currentState!.reset();
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDesktop = Responsive.isDesktop(context);

    final infoColumn = FadeSlideIn(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Let\'s build something great together.',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          Text(
            'Whether you have a project in mind, an opportunity to discuss, '
                'or just want to say hello — my inbox is always open.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 28),
          Row(
            children: [
              SocialIconButton(
                icon: Icons.email_outlined,
                tooltip: kEmail,
                onTap: () => widget.onSendEmail(),
              ),
              const SizedBox(width: 12),
              SocialIconButton(
                icon: Icons.code,
                tooltip: 'GitHub',
                onTap: widget.onGitHub,
              ),
              const SizedBox(width: 12),
              SocialIconButton(
                icon: Icons.business_center_outlined,
                tooltip: 'LinkedIn',
                onTap: widget.onLinkedIn,
              ),
              const SizedBox(width: 12),

              SocialIconButton(
                icon: Icons.chat,
                tooltip: 'WhatsApp',
                onTap: widget.onWhatsapp,
              ),
            ],
          ),
        ],
      ),
    );

    final form = FadeSlideIn(
      delay: const Duration(milliseconds: 150),
      child: Container(
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Your Name'),
                validator: (v) =>
                (v == null || v.trim().isEmpty) ? 'Please enter your name' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'Your Email'),
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Please enter your email';
                  final regex = RegExp(r'^[\w\.\-]+@[\w\-]+\.[a-zA-Z]{2,}$');
                  if (!regex.hasMatch(v.trim())) return 'Please enter a valid email';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _messageController,
                maxLines: 5,
                decoration: const InputDecoration(labelText: 'Message'),
                validator: (v) =>
                (v == null || v.trim().isEmpty) ? 'Please enter a message' : null,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _sending ? null : _submit,
                  icon: _sending
                      ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                      : const Icon(Icons.send_rounded),
                  label: Text(_sending ? 'Sending...' : 'Send Message'),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return SectionContainer(
      sectionKey: widget.sectionKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(kicker: 'Get in touch', title: 'Contact'),
          isDesktop
              ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 5, child: infoColumn),
              const SizedBox(width: 48),
              Expanded(flex: 6, child: form),
            ],
          )
              : Column(
            children: [
              infoColumn,
              const SizedBox(height: 32),
              form,
            ],
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// FOOTER SECTION
// =============================================================================

class FooterSection extends StatelessWidget {
  final VoidCallback onGitHub;
  final VoidCallback onLinkedIn;
  final VoidCallback onEmail;
  final VoidCallback onBackToTop;

  const FooterSection({
    super.key,
    required this.onGitHub,
    required this.onLinkedIn,
    required this.onEmail,
    required this.onBackToTop,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isMobile = Responsive.isMobile(context);

    return Container(
      color: scheme.surfaceContainerHigh,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              isMobile
                  ? Column(
                children: [
                  Text(kName, style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 16),
                  _socialsRow(),
                ],
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(kName, style: Theme.of(context).textTheme.titleMedium),
                  _socialsRow(),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(height: 1),
              const SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 12,
                children: [
                  Text(
                    '© ${DateTime.now().year} $kName. All rights reserved.',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextButton.icon(
                    onPressed: onBackToTop,
                    icon: const Icon(Icons.arrow_upward_rounded, size: 16),
                    label: const Text('Back to top'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialsRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SocialIconButton(icon: Icons.code, tooltip: 'GitHub', onTap: onGitHub),
        const SizedBox(width: 10),
        SocialIconButton(
          icon: Icons.business_center_outlined,
          tooltip: 'LinkedIn',
          onTap: onLinkedIn,
        ),
        const SizedBox(width: 10),
        SocialIconButton(icon: Icons.email_outlined, tooltip: 'Email', onTap: onEmail),
        const SizedBox(width: 12),


      ],
    );
  }
}