import 'package:flutter_project_new_mac/widgets/rule_description.dart';

abstract class AllRules {
  static List<RuleDescription> getAllRules() {
    var rules = [
      const RuleDescription(
          topLine: '1) Say "Yes-and"!',
          summary:
              'For a story to be built, whether it is short form or long form, the players have to agree to the basic situation and set-up. The who, what, and where have to be developed for a scene to work.'),
      const RuleDescription(
          topLine: '2) After the "and", add new information.',
          summary:
              'An improvised scene can\'t move forward or advance unless we add new information. That is why new information is added after the Yes of Yes-and!'),
      const RuleDescription(
          topLine: '3) Don\'t Block.',
          summary: 'The opposite of saying yes-and is blocking or denial.'),
      const RuleDescription(
          topLine: '4) Avoid Questions.',
          summary:
              'A form of blocking (in its more subtle form) is asking questions. Questions force our partners to fill in the information or do the work. It is a way of avoiding committing to a choice or a detail. It is playing it safe. However, on more advanced levels, questions can be used to add information or tell your partner the direction to go in.'),
      const RuleDescription(
          topLine: '5) Focus on the Here and Now.',
          summary:
              'Another useful rule is to keep the focus on the here and now. A scene is about the people in the scene. The change, the struggle, the win or loss will happen to the characters on the stage. Focus on what is going on right this at this moment.'),
      const RuleDescription(
          topLine: '6) Establish the Location!',
          summary:
              'Good scenes take place somewhere and at sometime. They do not take place on an empty stage. A location can easily be established in one or two lines without breaking the scene.'),
      const RuleDescription(
          topLine: '7) Be Specific - Provide Details!',
          summary:
              'Details are the lifeblood of moving a scene forward. Each detail provides clues to what is important. Details help provide beat objectives and flesh out characters.'),
      const RuleDescription(
          topLine: '8) Change, Change, Change!',
          summary:
              'Improv is about character change. The characters in a scene must experience some type of change for the scene to be interesting. Characters need to go on journeys, be altered by revelations, experience the ramifications of their choices and be moved by emotional moments.'),
      const RuleDescription(
          topLine:
              '9) For serious and emotional scenes, focus on characters and relationships.',
          summary:
              'A long form improv set should contain a variety of scenes. Some scenes will be emotional, some will be tense, and some should be funny. The easiest way to make a scene serious is by focusing on the relationship of those on the stage (their characters).'),
      const RuleDescription(
          topLine:
              '10) For humor, commit and take choices to the nth degree or focus on actions/objects.',
          summary:
              'A good long form set is balanced. Shakespeare knew that too much pathos was wearing on the audience; hence, he had minor characters in humorous scenes such as the drunken porter in MacBeth.'),
    ];

    return rules;
  }
}
