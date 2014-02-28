{-# LANGUAGE NoMonomorphismRestriction,ScopedTypeVariables #-}
import BrownPLT.Html.PermissiveParser
import BrownPLT.Html.PrettyPrint
import BrownPLT.Html.RawScript
import Text.ParserCombinators.Parsec.Pos
main = interact $ (\(Right (s::RawHtml ,_))->renderHtml s) . (parseHtmlFromString "aa")

