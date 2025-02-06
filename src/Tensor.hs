module Tensor where

import Prelude hiding (map)

data Stream a = forall s. Stream (s -> Step a s) s

data Step a s 
    = Done
    | Yield a s
    | Skip s