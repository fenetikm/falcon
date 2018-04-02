(function(Prism) {

  Prism.languages.php = Prism.languages.insertBefore('php', 'punctuation', {
    'brackets': {
      pattern: /\(|\)|\{|\}|\[|\]/
    },
    'operator': {
      pattern: /\.|\&|\!|\=\=\>|\!\=\=|\=\=\=|\=|\?\?/
    }
  });

  Prism.languages.php = Prism.languages.insertBefore('php', 'package', {
    'variable': {
      pattern: /\$+(?:\w+\b|(?={))/i,
      inside: {
        'dollar': {
          pattern: /\$/
        }
      }
    }
  });

  Prism.languages.php = Prism.languages.insertBefore('php', 'punctuation', {
    'member-selector': {
      pattern: /\-\>|\:\:/g
    }
  });

  Prism.languages.php = Prism.languages.insertBefore('php', 'keyword', {
    'php-functions': {
      pattern: /method_exists|function_exists|array_reduce|array_map|array_filter|array_replace/
    },
    'php-boolean': {
      pattern: /FALSE|TRUE/
    }
  });

  Prism.languages.php = Prism.languages.insertBefore('php', 'package', {
    'comment': {
      pattern: /(^|[^\\])(?:\/\*[\s\S]*?\*\/|\/\/.*)/,
      lookbehind: true,
      inside: {
        'doc-block': {
          pattern: /\@var|\@param|\{\@inheritdoc\}/
        }
      }
    }
  });

})(Prism);
