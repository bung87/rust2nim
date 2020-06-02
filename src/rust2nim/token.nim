import patty

variantp Token:
  PLUS
  MULTI
  NUM(val: int)
  DOT
  LPAREN
  RPAREN
  IGNORE
  TokenIf
  TokenElse
  TokenTrue
  TokenFalse
  # TokenIdentifier(val:string)
  # RAW_IDENTIFIER(val:string)
  TokenAs
  TokenBreak
  TokenConst
  TokenContinue
  TokenCrate
  TokenEnum
  TokenExtern
  TokenFn
  TokenFor
  TokenImpl
  TokenIn
  TokenLet
  TokenLoop
  TokenMatch
  TokenMod
  TokenMove
  TokenMut
  TokenPub
  TokenRef
  TokenReturn
  TokenSelf
  TokenSSelf
  TokenStatic
  TokenStruct
  TokenSuper
  TokenTrait
  TokenType
  TokenUnsafe
  TokenUse
  TokenWhere
  TokenWhile
  TokenAsync
  TokenAwait
  TokenDyn
  TokenUnion