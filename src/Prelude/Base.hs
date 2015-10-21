-- |
-- This module reexports most of the definitions from the \"base\" package,
-- which are meant to be imported unqualified.
--
-- This is adapted from the base-prelude package by Nikita Volkov.
module Prelude.Base
  ( module E
  ) where

-- Reexports
-------------------------

import Control.Applicative as E
import Control.Arrow as E
import Control.Concurrent as E
import Control.Exception as E
import Control.Monad as E 
import Control.Monad.Fix as E hiding (fix)
import Control.Monad.ST as E
import Data.Bits as E
import Data.Bool as E 
import Data.Char as E
import Data.Complex as E
import Data.Data as E
import Data.Dynamic as E
import Data.Either as E
import Data.Fixed as E
import Data.Foldable as E
import Data.Functor as E 
import Data.Function as E 
import Data.Int as E
import Data.IORef as E
import Data.Ix as E
import Data.List as E 
import Data.Maybe as E
import Data.Monoid as E
import Data.Ord as E
import Data.Ratio as E
import Data.STRef as E
import Data.String as E
import Data.Traversable as E
import Data.Tuple as E
import Data.Unique as E
import Data.Version as E
import Data.Word as E
import Debug.Trace as E 
import Foreign.Storable as E (Storable)
import GHC.Conc as E hiding (withMVar, threadWaitWriteSTM, threadWaitWrite, threadWaitReadSTM, threadWaitRead)
import GHC.Generics as E (Generic)
import GHC.IO.Exception as E
import Prelude as E 
import System.Environment as E
import System.Exit as E
import System.IO as E (Handle, hClose)
import System.IO.Error as E
import System.Mem as E
import System.Mem.StableName as E
import System.Timeout as E
import Text.ParserCombinators.ReadP as E (ReadP, readP_to_S, readS_to_P)
import Text.ParserCombinators.ReadPrec as E (ReadPrec, readPrec_to_P, readP_to_Prec, readPrec_to_S, readS_to_Prec)
import Text.Read as E (Read(..), readMaybe, readEither)
import Unsafe.Coerce as E

