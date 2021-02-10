{-# LANGUAGE DerivingStrategies, GeneralizedNewtypeDeriving,
  TypeFamilies, TypeOperators, FlexibleContexts, DataKinds,
  MultiParamTypeClasses #-}
module Godot.Core.HashingContext
       (Godot.Core.HashingContext._HASH_SHA1,
        Godot.Core.HashingContext._HASH_MD5,
        Godot.Core.HashingContext._HASH_SHA256,
        Godot.Core.HashingContext.finish, Godot.Core.HashingContext.start,
        Godot.Core.HashingContext.update)
       where
import Data.Coerce
import Foreign.C
import Godot.Internal.Dispatch
import System.IO.Unsafe
import Godot.Gdnative.Internal
import Godot.Api.Types

_HASH_SHA1 :: Int
_HASH_SHA1 = 1

_HASH_MD5 :: Int
_HASH_MD5 = 0

_HASH_SHA256 :: Int
_HASH_SHA256 = 2

{-# NOINLINE bindHashingContext_finish #-}

-- | Closes the current context, and return the computed hash.
bindHashingContext_finish :: MethodBind
bindHashingContext_finish
  = unsafePerformIO $
      withCString "HashingContext" $
        \ clsNamePtr ->
          withCString "finish" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

-- | Closes the current context, and return the computed hash.
finish ::
         (HashingContext :< cls, Object :< cls) => cls -> IO PoolByteArray
finish cls
  = withVariantArray []
      (\ (arrPtr, len) ->
         godot_method_bind_call bindHashingContext_finish (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindHashingContext_start #-}

-- | Starts a new hash computation of the given [code]type[/code] (e.g. [constant HASH_SHA256] to start computation of a SHA-256).
bindHashingContext_start :: MethodBind
bindHashingContext_start
  = unsafePerformIO $
      withCString "HashingContext" $
        \ clsNamePtr ->
          withCString "start" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

-- | Starts a new hash computation of the given [code]type[/code] (e.g. [constant HASH_SHA256] to start computation of a SHA-256).
start ::
        (HashingContext :< cls, Object :< cls) => cls -> Int -> IO Int
start cls arg1
  = withVariantArray [toVariant arg1]
      (\ (arrPtr, len) ->
         godot_method_bind_call bindHashingContext_start (upcast cls) arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindHashingContext_update #-}

-- | Updates the computation with the given [code]chunk[/code] of data.
bindHashingContext_update :: MethodBind
bindHashingContext_update
  = unsafePerformIO $
      withCString "HashingContext" $
        \ clsNamePtr ->
          withCString "update" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

-- | Updates the computation with the given [code]chunk[/code] of data.
update ::
         (HashingContext :< cls, Object :< cls) =>
         cls -> PoolByteArray -> IO Int
update cls arg1
  = withVariantArray [toVariant arg1]
      (\ (arrPtr, len) ->
         godot_method_bind_call bindHashingContext_update (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)