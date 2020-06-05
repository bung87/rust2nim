import nimly
import ./token
import strutils

niml myLexer[Token]:
  r"\(":
    return LPAREN()

  r"\)":
    return RPAREN()

  r"\+":
    return PLUS()

  r"\*":
    return MULTI()

  r"\d":
    return NUM(parseInt(token.token))

  r"\.":
    return DOT()

  r"\s":
    return IGNORE()
  r"if":
    return TokenIf()
  r"else":
    return TokenElse()
  r"true":
    return TokenTrue()
  r"false":
    return TokenFalse()
  r"[a-z A-Z] [a-z A-Z 0-9 _]*| _ [a-z A-Z 0-9 _]+":
    return TokenIdentifier(token.token)
  r"r#[a-z A-Z] [a-z A-Z 0-9 _]*| _ [a-z A-Z 0-9 _]+":
    return RAW_IDENTIFIER(token.token.substring(2,token.token.high))
  r"as":
    return TokenAs()
  r"break":
    return TokenBreak()
  r"const":
    return TokenConst()
  r"continue":
    return TokenContinue()
  r"crate":
    return TokenCrate()
  r"enum":
    return TokenEnum()
  r"extern":
    return TokenExtern()
  r"fn":
    return TokenFn()
  r"for":
    return TokenFor()
  r"impl":
    return TokenImpl()
  r"in":
    return TokenIn()
  r"let":
    return TokenLet()
  r"loop":
    return TokenLoop()
  r"match":
    return TokenMatch()
  r"mod":
    return TokenMod()
  r"move":
    return TokenMove()
  r"mut":
    return TokenMut()
  r"pub":
    return TokenPub()
  r"ref":
    return TokenRef()
  r"return":
    return TokenReturn()
  r"self":
    return TokenSelf()
  r"Self":
    return TokenSSelf()
  r"static":
    return TokenStatic()
  r"struct":
    return TokenStruct()
  r"super":
    return TokenSuper()
  r"trait":
    return TokenTrait()
  r"type":
    return TokenType()
  r"unsafe":
    return TokenUnsafe()
  r"use":
    return TokenUse()
  r"where":
    return TokenWhere()
  r"while":
    return TokenWhile()
  r"async":
    return TokenAsync()
  r"await":
    return TokenAwait()
  r"dyn":
    return TokenDyn()
  r"union":
    return TokenUnion()
  r"'static":
    return TokenStatic()
  r"=":
    return OpAssign()