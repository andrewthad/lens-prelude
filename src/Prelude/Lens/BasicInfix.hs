-- |
-- This module reexports the commonly used infix operators 
-- from the \"lens\" package.

module Prelude.Lens.BasicInfix
  ( module E
  ) where

import Control.Lens as E (
    (^.)
  , (^..)
  , (^?)
  , (.~)
  )
