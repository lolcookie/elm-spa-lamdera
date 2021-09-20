module Gen.Params.Home_ exposing (Params, parser)

import Url.Parser as Parser
import Url.Parser exposing (Parser)


type alias Params =
    ()


parser : Parser a a
parser =
    (Parser.top)

