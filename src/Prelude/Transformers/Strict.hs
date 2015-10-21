-- |
-- This module reexports most of the definitions from the \"transformers\" package.
-- Strict variants are provided instead of the lazy variants.
-- Notably, the functions for lifting callcc, listen, pass, and catch
-- are left out because there are different
-- variants for every monad transformer. 
--
-- 'Control.Monad.Trans.Error' is left out because it is deprecated.
--
-- 'ListT' is left out because it is not actually a monad transformer and
-- it is despised by most.
--
-- From 'Control.Monad.Trans.RWS.Strict', we do not export functions like 
-- 'reader', 'writer','ask', 'tell', 'state', etc. that would clash with 
-- the identically-named functions that deal specifically with 'ReaderT', 
-- 'WriterT', and 'StateT'. You will need to import this module qualified
-- to use those functions.
--
-- Both 'Data.Functor.Sum' and 'Data.Functor.Product' are left out because
-- the names of these data types clash with the commonly used newtypes
-- in 'Data.Monoid'.
--
-- From 'Control.Monad.Trans.Cont', 'reset' and 'shift' have been left out
-- because there is a 'shift' in 'Data.Bits'.
--

module Prelude.Transformers.Strict
  ( module E
  ) where

-- Applicatives
import Control.Applicative.Backwards as E
import Control.Applicative.Lift as E (Lift(..),unLift,mapLift)

-- Typeclasses
import Control.Monad.IO.Class as E
import Control.Monad.Trans.Class as E

-- Transformers
import Control.Monad.Trans.Cont as E (Cont,ContT(..),cont
  ,runCont,evalCont,mapCont,withCont,evalContT,mapContT,withContT
  ,resetT,shiftT)
import Control.Monad.Trans.Except as E (Except,ExceptT(..),except
  ,runExcept,mapExcept,withExcept,runExceptT,mapExceptT,withExceptT
  ,throwE,catchE)
import Control.Monad.Trans.Identity as E (IdentityT(..),mapIdentityT)
import Control.Monad.Trans.Maybe as E (MaybeT(..),mapMaybeT
  ,maybeToExceptT,exceptToMaybeT)
import Control.Monad.Trans.RWS.Strict as E (RWS,RWST(..),rws,runRWS
  ,evalRWS,execRWS,mapRWS,withRWS,evalRWST,execRWST,mapRWST,withRWST)
import Control.Monad.Trans.Reader as E (Reader,ReaderT(..),reader
  ,runReader,mapReader,withReader,mapReaderT,withReaderT,ask,local
  ,asks)
import Control.Monad.Trans.State.Strict as E (State,StateT(..),state
  ,runState,evalState,execState,mapState,withState,evalStateT
  ,execStateT,mapStateT,withStateT,get,put,modify,modify',gets)
import Control.Monad.Trans.Writer.Strict as E (Writer,WriterT(..)
  ,writer,runWriter,execWriter,mapWriter,execWriterT,mapWriterT
  ,tell,listen,listens,pass,censor)

-- Functors
import Data.Functor.Classes as E
import Data.Functor.Compose as E
import Data.Functor.Constant as E
import Data.Functor.Reverse as E


