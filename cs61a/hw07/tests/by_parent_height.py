test = {
  'name': 'by_parent_height',
  'points': 1,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          sqlite> SELECT * FROM by_parent_height;
          herbert
          fillmore
          abraham
          delano
          grover
          barack
          clinton
          """,
          'hidden': False,
          'locked': False,
          'multiline': False
        }
      ],
      'ordered': True,
      'scored': True,
      'setup': r"""
      sqlite> .read hw07.sql
      """,
      'teardown': '',
      'type': 'sqlite'
    }
  ]
}
