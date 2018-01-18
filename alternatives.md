# Know alternatives for Grok's parsing

## Regular expressions

## Parsing Expression Grammars

A PEG, or Parsing Expression Grammar, is a way of describing a language (or pattern) for string matching. Unlike regular expressions, a PEG can parse an entire language, including recursive structures. A PEG is most similar in classification to context free grammars, which are implemented by tools like [Yacc or Bison.](http://dinosaur.compilertools.net/)

[Wiki: Parsing expression grammar](https://en.wikipedia.org/wiki/Parsing_expression_grammar)

[(Lua implementation - LPeg)](http://www.inf.puc-rio.br/~roberto/lpeg/)
[An introduction to Parsing Expression Grammars with LPeg](http://leafo.net/guides/parsing-expression-grammars.html)

[LPEG patterns](https://github.com/daurnimator/lpeg_patterns)

[Grok emulation basing on lpeg](https://github.com/dscoshpe/lpeg-grok)
