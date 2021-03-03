class Covid {
  int confirmed;
  int recovered;
  int hospitalized;
  int deaths;
  int newConfirmed;
  int newRecovered;
  int newHospitalized;
  int newDeaths;
  String updateDate;
  String source;

  Covid({
    this.confirmed,
    this.recovered,
    this.hospitalized,
    this.deaths,
    this.newConfirmed,
    this.newRecovered,
    this.newHospitalized,
    this.newDeaths,
    this.updateDate,
    this.source,
  });

  factory Covid.fromJson(Map<String, dynamic> parsedJson) {
    return Covid(
      confirmed: parsedJson['Confirmed'] as int,
      recovered: parsedJson['Recovered'] as int,
      hospitalized: parsedJson['Hospitalized'] as int,
      deaths: parsedJson['Deaths'] as int,
      newConfirmed: parsedJson['NewConfirmed'] as int,
      newRecovered: parsedJson['NewRecovered'] as int,
      newHospitalized: parsedJson['NewHospitalized'] as int,
      newDeaths: parsedJson['NewDeaths'] as int,
      updateDate: parsedJson['UpdateDate'] as String,
      source: parsedJson['Source'] as String,
    );
  }
}
