part of 'resume_cubit.dart';

class ResumeState extends Equatable {
  final String? fullName;
  final String? jobRoll;
  final String? summry;
  final List<WorkExperience?>? workExperience;
  final Contact? contact;
  final List<String?>? skills;
  final List<String?>? interest;
  final List<String?>? certifications;
  final String? image;

  ResumeState({
    this.fullName,
    this.jobRoll,
    this.summry,
    this.workExperience = const [],
    this.contact,
    this.skills = const [],
    this.interest = const [],
    this.certifications = const [],
    this.image,
  });

  ResumeState copyWith({
    String? fullName,
    String? jobRoll,
    String? summry,
    List<WorkExperience?>? workExperience,
    Contact? contact,
    List<String?>? skills,
    List<String?>? interest,
    List<String?>? certifications,
    String? image,
  }) {
    return ResumeState(
      fullName: fullName ?? this.fullName,
      summry: summry ?? this.summry,
      certifications: certifications ?? this.certifications,
      contact: contact ?? this.contact,
      image: image ?? this.image,
      interest: interest ?? this.interest,
      jobRoll: jobRoll ?? this.jobRoll,
      skills: skills ?? this.skills,
      workExperience: workExperience ?? this.workExperience,
    );
  }

  @override
  List<Object?> get props => [
        fullName,
        summry,
        certifications,
        contact,
        image,
        interest,
        jobRoll,
        skills,
        workExperience,
      ];
}
