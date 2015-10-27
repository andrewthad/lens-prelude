module Prelude.Bitpacked.Module where

import Prelude hiding (map,filter,length,all,any,splitAt,span
  ,dropWhile,takeWhile,break,null,writeFile,readFile,foldl
  ,concat,replicate,lines,words,unlines,unwords)
import Data.Word (Word8)
import Prelude.Bitpacked.Types
import qualified Prelude as Prelude 
import qualified Data.Text as Text
import qualified Data.Text.IO as Text
import qualified Data.Text.Lazy as LText
import qualified Data.Text.Lazy.IO as LText
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as ByteStringChar

data BitpackedModule c e = BitpackedModule
  { map :: (e -> e) -> c -> c
  , length :: c -> Int
  , filter :: (e -> Bool) -> c -> c
  , singleton :: e -> c
  , null :: c -> Bool
  , pack :: [e] -> c
  , unpack :: c -> [e]
  , empty :: c
  , readFile :: FilePath -> IO c
  , writeFile :: FilePath -> c -> IO ()
  , break :: (e -> Bool) -> c -> (c, c)
  , span :: (e -> Bool) -> c -> (c, c)
  , dropWhile :: (e -> Bool) -> c -> c
  , takeWhile :: (e -> Bool) -> c -> c
  , any :: (e -> Bool) -> c -> Bool
  , all :: (e -> Bool) -> c -> Bool
  , splitAt :: Int -> c -> (c, c)
  , intersperse :: e -> c -> c
  , intercalate :: c -> [c] -> c
  , foldl :: forall a. (a -> e -> a) -> a -> c -> a
  , foldl' :: forall a. (a -> e -> a) -> a -> c -> a
  , concat :: [c] -> c
  , replicate :: Int -> e -> c
  , lines :: c -> [c]
  }

text :: BitpackedModule Text Char
text = BitpackedModule
  { map = Text.map
  , length = Text.length
  , filter = Text.filter
  , singleton = Text.singleton
  , null = Text.null
  , pack = Text.pack
  , unpack = Text.unpack
  , empty = Text.empty
  , readFile = Text.readFile
  , writeFile = Text.writeFile
  , break = Text.break
  , span = Text.span
  , dropWhile = Text.dropWhile
  , takeWhile = Text.takeWhile
  , any = Text.any
  , all = Text.all
  , splitAt = Text.splitAt
  , intersperse = Text.intersperse
  , intercalate = Text.intercalate
  , foldl = Text.foldl
  , foldl' = Text.foldl'
  , concat = Text.concat
  , replicate = \i c -> Text.replicate i (Text.singleton c)
  , lines = Text.lines
  }

byteString :: BitpackedModule ByteString Word8
byteString = BitpackedModule
  { map = ByteString.map
  , length = ByteString.length
  , filter = ByteString.filter
  , singleton = ByteString.singleton
  , null = ByteString.null
  , pack = ByteString.pack
  , unpack = ByteString.unpack
  , empty = ByteString.empty
  , readFile = ByteString.readFile
  , writeFile = ByteString.writeFile
  , break = ByteString.break
  , span = ByteString.span
  , dropWhile = ByteString.dropWhile
  , takeWhile = ByteString.takeWhile
  , any = ByteString.any
  , all = ByteString.all
  , splitAt = ByteString.splitAt
  , intersperse = ByteString.intersperse
  , intercalate = ByteString.intercalate
  , foldl = ByteString.foldl
  , foldl' = ByteString.foldl'
  , concat = ByteString.concat
  , replicate = ByteString.replicate
  , lines = ByteStringChar.lines
  }

byteStringChar :: BitpackedModule ByteString Char
byteStringChar = BitpackedModule
  { map = ByteStringChar.map
  , length = ByteStringChar.length
  , filter = ByteStringChar.filter
  , singleton = ByteStringChar.singleton
  , null = ByteStringChar.null
  , pack = ByteStringChar.pack
  , unpack = ByteStringChar.unpack
  , empty = ByteStringChar.empty
  , readFile = ByteStringChar.readFile
  , writeFile = ByteStringChar.writeFile
  , break = ByteStringChar.break
  , span = ByteStringChar.span
  , dropWhile = ByteStringChar.dropWhile
  , takeWhile = ByteStringChar.takeWhile
  , any = ByteStringChar.any
  , all = ByteStringChar.all
  , splitAt = ByteStringChar.splitAt
  , intersperse = ByteStringChar.intersperse
  , intercalate = ByteStringChar.intercalate
  , foldl = ByteStringChar.foldl
  , foldl' = ByteStringChar.foldl'
  , concat = ByteStringChar.concat
  , replicate = ByteStringChar.replicate
  , lines = ByteStringChar.lines
  }
  
