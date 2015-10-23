-- |
-- This module reexports most of the definitions from the \"mtl\" package.
-- Strict variants are provided instead of the lazy variants.

module Prelude.MTL
  ( module E
  ) where

import Control.Monad.Cont.Class as E 
import Control.Monad.Error.Class as E 
import Control.Monad.RWS.Class as E 
import Control.Monad.Reader.Class as E 
import Control.Monad.State.Class as E 
import Control.Monad.Writer.Class as E 

