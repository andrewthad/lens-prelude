-- |
-- This module reexports most of the types from \"containers\",
-- \"unordered-containers\", \"array\", and \"vector\". No
-- functions are exported.
--
module Prelude.Containers.Types
  ( module E
  ) where

-- array types
import Data.Array as E (Array)
import Data.Array.IArray as E (IArray)
import Data.Array.IO as E (IOArray,IOUArray)
import Data.Array.MArray as E (MArray)
import Data.Array.ST as E (STArray,STUArray)
import Data.Array.Storable as E (StorableArray)
import Data.Array.Unboxed as E (UArray)

-- containers
import Data.IntMap   as E (IntMap)
import Data.IntSet   as E (IntSet)
import Data.Map      as E (Map)
import Data.Sequence as E (Seq)
import Data.Set      as E (Set)
import Data.Tree     as E (Tree)

-- unordered-containers
import Data.HashMap.Strict as E (HashMap)
import Data.HashSet        as E (HashSet)

-- vector
import Data.Vector         as E (Vector)
import Data.Vector.Mutable as E (MVector,IOVector,STVector)


