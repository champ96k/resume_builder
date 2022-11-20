class WorkExperience {
  final String title;
  final String organizationalUniversityProjectName;
  final String roleResponsibilityCourse;
  final String startDate;
  final String endDate;
  final List<String> points;

  WorkExperience({
    this.title = '',
    this.organizationalUniversityProjectName = '',
    this.roleResponsibilityCourse = '',
    this.startDate = '',
    this.endDate = '',
    this.points = const [],
  });
}

class Contact {
  final String? addressLine1;
  final String? addressLine2;
  final String? email;
  final String? phone;
  final String? website;

  Contact({
    this.addressLine1,
    this.addressLine2,
    this.email,
    this.phone,
    this.website,
  });
}
