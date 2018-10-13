class LibrusSynergiaAccountsResponse {
  final num lastModification;
  List<dynamic> accounts;

  LibrusSynergiaAccountsResponse(this.lastModification, this.accounts);

  LibrusSynergiaAccountsResponse.fromJson(Map<String, dynamic> json)
      : lastModification = json['lastModification'],
        accounts = ['accounts'];
}

class LibrusSynergiaAccountResponse {
  final String id;
  final String group;
  final String accessToken;
  final String login;
  final String studentName;

  LibrusSynergiaAccountResponse(
      this.id, this.group, this.accessToken, this.login, this.studentName);

  LibrusSynergiaAccountResponse.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        group = json['group'],
        accessToken = json['accessToken'],
        login = json['login'],
        studentName = json['studentName'];
}
