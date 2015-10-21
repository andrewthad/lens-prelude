-- |
-- This module export Text, ByteString, LText, and LByteString
--
module Prelude.Bitpacked.Types
  ( Text
  , ByteString
  , LText
  , LByteString
  ) where

import Data.Text (Text)
import Data.ByteString (ByteString)

import qualified Data.Text.Lazy as LazyText
import qualified Data.ByteString.Lazy as LazyByteString

type LText = LazyText.Text
type LByteString = LazyByteString.ByteString

