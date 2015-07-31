module Paths_haskell_lang (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/icostan/.cabal/bin"
libdir     = "/Users/icostan/.cabal/lib/x86_64-osx-ghc-7.10.1/haske_DYAsM7lZ8KFK9XmNGG9nLi"
datadir    = "/Users/icostan/.cabal/share/x86_64-osx-ghc-7.10.1/haskell-lang-0.1.0.0"
libexecdir = "/Users/icostan/.cabal/libexec"
sysconfdir = "/Users/icostan/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_lang_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_lang_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "haskell_lang_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_lang_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_lang_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
