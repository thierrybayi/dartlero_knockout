part of dartlero_knockout;

class ProjectModel extends ConceptModel {

  static final String project = 'Project';

  Map<String, ConceptEntities> newEntries() {
    var projects = new Projects();
    var map = new Map<String, ConceptEntities>();
    map[project] = projects;
    return map;
  }

  Projects get projects => getEntry(project);

  init() {
    var eat = new Project();
    eat.name = 'Eating';
    eat.description =
        'Eating with my parents.';
    projects.add(eat);

    var sleep = new Project();
    sleep.name = 'Sleeping';
    sleep.description =
        'Sleeping after dinner.';
    projects.add(sleep);

  }

  display() {
    print('Project Model');
    print('=============');
    projects.display('Projects');
    print(
      '============= ============= ============= '
      '============= ============= ============= '
    );
  }

}


