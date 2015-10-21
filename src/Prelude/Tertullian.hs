-- |
-- This is intended to be used as an prelude replacement. 
--
module Prelude.Tertullian
  ( module E
  ) where

import Prelude.Containers.Types as E
import Prelude.Lens.BasicInfix as E
import Prelude.Transformers.Strict as E
import Prelude.MTL.Types as E
import Prelude.Base as E

import Data.Hashable as E (Hashable)
import Data.Time as E 
import Data.Either.Combinators as E hiding (isLeft,isRight)
import Control.Lens.Combinators as E hiding (uncons,index)

