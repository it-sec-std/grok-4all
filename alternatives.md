# Know alternatives for Grok's parsing

## Regular expressions

## Parsing Expression Grammars (PEG)

A PEG, or Parsing Expression Grammar, is a way of describing a language (or pattern) for string matching. Unlike regular expressions, a PEG can parse an entire language, including recursive structures. A PEG is most similar in classification to context free grammars, which are implemented by tools like [Yacc or Bison.](http://dinosaur.compilertools.net/)

[Wiki: Parsing expression grammar](https://en.wikipedia.org/wiki/Parsing_expression_grammar)

[(Lua implementation - LPeg)](http://www.inf.puc-rio.br/~roberto/lpeg/)
[An introduction to Parsing Expression Grammars with LPeg](http://leafo.net/guides/parsing-expression-grammars.html)

[LPEG patterns](https://github.com/daurnimator/lpeg_patterns)

[lpeg-grok: Grok emulation basing on lpeg](https://github.com/dscoshpe/lpeg-grok)

[The Packrat Parsing and Parsing Expression Grammars](http://bford.info/packrat/)

### Interesting implementations

#### C

[peg/leg — recursive-descent parser generators for C](http://piumarta.com/software/peg/)

#### C++

[The Parsing Expression Grammar Template Library (PEGTL) is a zero-dependency C++11 header-only parser combinator library for creating parsers according to a Parsing Expression Grammar (PEG).](https://github.com/taocpp/PEGTL)


```C++
// PEG rule for integers consisting of a non-empty
// sequence of digits with an optional sign:

// integer ::= ( '+' / '-' )? digit+

// The same parsing rule implemented with the PEGTL:

using namespace tao::pegtl;

struct integer : seq< opt< one< '+', '-' > >, plus< digit > > {};
```

#### Python

[pyPEG – a PEG Parser-Interpreter in Python](https://fdik.org/pyPEG/)


#### Lua

[lpeg-grok: Fast, efficient, and reusable pattern matching with Lua and LPeg.](https://github.com/dscoshpe/lpeg-grok)

```Lua
patterns = {
	TIMESTAMP = "{:date: (YEAR '/' MONTHNUM2 '/' MONTHDAY) :} ' ' {:time: TIME :}",
	YEAR = "(%d%d)(%d%d)?",
	MONTHNUM2 = "('0'[1-9]/'1'[0-2])",
	MONTHDAY = "(('0'[1-9])/([12][0-9])/('3'[01])/[1-9])",
	TIME = "(HOUR ':' MINUTE (':' SECOND)?)",
	HOUR = "('2'[0123]/[01]?[0-9])",
	MINUTE = "([0-5][0-9])^1",
	SECOND = "(([0-5]?[0-9]/'60')([:.,][0-9]+)?)",
}

grok:compile("TIMESTAMP"):match("2014/06/30 06:46:34")
```
