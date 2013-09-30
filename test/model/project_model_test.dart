import 'package:unittest/unittest.dart';
import 'package:dartlero/dartlero.dart';
import 'package:dartlero_knockout/dartlero_knockout.dart';

testProjects(Projects projects) {
  group("Testing Projects", () {
    setUp(() {
      var projectCount = 0;
      expect(projects.length, equals(projectCount));

      var eat = new Project();
      expect(eat, isNotNull);
      eat.name = 'Eating';
      eat.description =
          'Eating with my parents.';
      projects.add(eat);
      expect(projects.length, equals(++projectCount));

      var sleep = new Project();
      expect(sleep, isNotNull);
      sleep.name = 'Sleeping';
      sleep.description =
          'Slepping after dinner.';
      projects.add(sleep);
      expect(projects.length, equals(++projectCount));

      //projects.display('Projects');
    });
    tearDown(() {
      projects.clear();
      expect(projects.isEmpty, isTrue);
    });
    test('Add Project', () {
      var project = new Project();
      expect(project, isNotNull);
      project.name = 'sleeping';
      project.description = 'sleeping after dinner';
      var added = projects.add(project);
      expect(added, isTrue);
      projects.display('Add Project');
    });
    test('Add Project Without Data', () {
      var projectCount = projects.length;
      var project = new Project();
      expect(project, isNotNull);
      var added = projects.add(project);
      expect(added, isTrue);
      projects.display('Add Project Without Data');
    });
    test('Add Project Not Unique', () {
      var projectCount = projects.length;
      var project = new Project();
      expect(project, isNotNull);
      project.name = 'Eating';
      var added = projects.add(project);
      expect(added, isFalse);
      projects.display('Add Project Not Unique');
    });
    
    test('Find Project by Name', () {
      var searchName = 'Eating';
      var project = projects.find(searchName);
      expect(project, isNotNull);
      expect(project.name, equals(searchName));
      project.display('Find Project by Name');
    });
    
     
    test('True for Every Project', () {
      expect(projects.every((p) => p.code != null), isTrue);
      expect(projects.every((p) => p.name != null), isTrue);
    });
        
  });
}

initDisplayModel() {
  ProjectModel projectModel = new ProjectModel();
  projectModel.init();
  projectModel.display();
}

testModel() {
  ProjectModel projectModel = new ProjectModel();
  Projects projects = projectModel.projects;
  testProjects(projects);
}

main() {
  //initDisplayModel();
  testModel();
}
