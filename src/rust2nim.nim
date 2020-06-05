

import rust2nim/lexer
import rust2nim/parser
import rust2nim/token
import nimly

when isMainModule:
  var testLexer = myLexer.newWithString("1 + 42 * 101010")
  testLexer.ignoreIf = proc(r: Token): bool = r.kind == TokenKind.IGNORE

  var
    ret: seq[TokenKind] = @[]

  for token in testLexer.lexIter:
    ret.add(token.kind)
  echo $ret
  