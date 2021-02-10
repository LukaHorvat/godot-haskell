{-# LANGUAGE DerivingStrategies, GeneralizedNewtypeDeriving,
  TypeFamilies, TypeOperators, FlexibleContexts, DataKinds,
  MultiParamTypeClasses #-}
module Godot.Core.VisualShaderNodeTexture
       (Godot.Core.VisualShaderNodeTexture._SOURCE_DEPTH,
        Godot.Core.VisualShaderNodeTexture._TYPE_DATA,
        Godot.Core.VisualShaderNodeTexture._SOURCE_2D_NORMAL,
        Godot.Core.VisualShaderNodeTexture._SOURCE_PORT,
        Godot.Core.VisualShaderNodeTexture._SOURCE_SCREEN,
        Godot.Core.VisualShaderNodeTexture._SOURCE_2D_TEXTURE,
        Godot.Core.VisualShaderNodeTexture._TYPE_COLOR,
        Godot.Core.VisualShaderNodeTexture._SOURCE_TEXTURE,
        Godot.Core.VisualShaderNodeTexture._TYPE_NORMALMAP,
        Godot.Core.VisualShaderNodeTexture.get_source,
        Godot.Core.VisualShaderNodeTexture.get_texture,
        Godot.Core.VisualShaderNodeTexture.get_texture_type,
        Godot.Core.VisualShaderNodeTexture.set_source,
        Godot.Core.VisualShaderNodeTexture.set_texture,
        Godot.Core.VisualShaderNodeTexture.set_texture_type)
       where
import Data.Coerce
import Foreign.C
import Godot.Internal.Dispatch
import System.IO.Unsafe
import Godot.Gdnative.Internal
import Godot.Api.Types

_SOURCE_DEPTH :: Int
_SOURCE_DEPTH = 4

_TYPE_DATA :: Int
_TYPE_DATA = 0

_SOURCE_2D_NORMAL :: Int
_SOURCE_2D_NORMAL = 3

_SOURCE_PORT :: Int
_SOURCE_PORT = 5

_SOURCE_SCREEN :: Int
_SOURCE_SCREEN = 1

_SOURCE_2D_TEXTURE :: Int
_SOURCE_2D_TEXTURE = 2

_TYPE_COLOR :: Int
_TYPE_COLOR = 1

_SOURCE_TEXTURE :: Int
_SOURCE_TEXTURE = 0

_TYPE_NORMALMAP :: Int
_TYPE_NORMALMAP = 2

{-# NOINLINE bindVisualShaderNodeTexture_get_source #-}

-- | Determines the source for the lookup. See [enum Source] for options.
bindVisualShaderNodeTexture_get_source :: MethodBind
bindVisualShaderNodeTexture_get_source
  = unsafePerformIO $
      withCString "VisualShaderNodeTexture" $
        \ clsNamePtr ->
          withCString "get_source" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

-- | Determines the source for the lookup. See [enum Source] for options.
get_source ::
             (VisualShaderNodeTexture :< cls, Object :< cls) => cls -> IO Int
get_source cls
  = withVariantArray []
      (\ (arrPtr, len) ->
         godot_method_bind_call bindVisualShaderNodeTexture_get_source
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindVisualShaderNodeTexture_get_texture #-}

-- | The source texture, if needed for the selected [member source].
bindVisualShaderNodeTexture_get_texture :: MethodBind
bindVisualShaderNodeTexture_get_texture
  = unsafePerformIO $
      withCString "VisualShaderNodeTexture" $
        \ clsNamePtr ->
          withCString "get_texture" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

-- | The source texture, if needed for the selected [member source].
get_texture ::
              (VisualShaderNodeTexture :< cls, Object :< cls) =>
              cls -> IO Texture
get_texture cls
  = withVariantArray []
      (\ (arrPtr, len) ->
         godot_method_bind_call bindVisualShaderNodeTexture_get_texture
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindVisualShaderNodeTexture_get_texture_type #-}

-- | Specifies the type of the texture if [member source] is set to [constant SOURCE_TEXTURE]. See [enum TextureType] for options.
bindVisualShaderNodeTexture_get_texture_type :: MethodBind
bindVisualShaderNodeTexture_get_texture_type
  = unsafePerformIO $
      withCString "VisualShaderNodeTexture" $
        \ clsNamePtr ->
          withCString "get_texture_type" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

-- | Specifies the type of the texture if [member source] is set to [constant SOURCE_TEXTURE]. See [enum TextureType] for options.
get_texture_type ::
                   (VisualShaderNodeTexture :< cls, Object :< cls) => cls -> IO Int
get_texture_type cls
  = withVariantArray []
      (\ (arrPtr, len) ->
         godot_method_bind_call bindVisualShaderNodeTexture_get_texture_type
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindVisualShaderNodeTexture_set_source #-}

-- | Determines the source for the lookup. See [enum Source] for options.
bindVisualShaderNodeTexture_set_source :: MethodBind
bindVisualShaderNodeTexture_set_source
  = unsafePerformIO $
      withCString "VisualShaderNodeTexture" $
        \ clsNamePtr ->
          withCString "set_source" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

-- | Determines the source for the lookup. See [enum Source] for options.
set_source ::
             (VisualShaderNodeTexture :< cls, Object :< cls) =>
             cls -> Int -> IO ()
set_source cls arg1
  = withVariantArray [toVariant arg1]
      (\ (arrPtr, len) ->
         godot_method_bind_call bindVisualShaderNodeTexture_set_source
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindVisualShaderNodeTexture_set_texture #-}

-- | The source texture, if needed for the selected [member source].
bindVisualShaderNodeTexture_set_texture :: MethodBind
bindVisualShaderNodeTexture_set_texture
  = unsafePerformIO $
      withCString "VisualShaderNodeTexture" $
        \ clsNamePtr ->
          withCString "set_texture" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

-- | The source texture, if needed for the selected [member source].
set_texture ::
              (VisualShaderNodeTexture :< cls, Object :< cls) =>
              cls -> Texture -> IO ()
set_texture cls arg1
  = withVariantArray [toVariant arg1]
      (\ (arrPtr, len) ->
         godot_method_bind_call bindVisualShaderNodeTexture_set_texture
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindVisualShaderNodeTexture_set_texture_type #-}

-- | Specifies the type of the texture if [member source] is set to [constant SOURCE_TEXTURE]. See [enum TextureType] for options.
bindVisualShaderNodeTexture_set_texture_type :: MethodBind
bindVisualShaderNodeTexture_set_texture_type
  = unsafePerformIO $
      withCString "VisualShaderNodeTexture" $
        \ clsNamePtr ->
          withCString "set_texture_type" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

-- | Specifies the type of the texture if [member source] is set to [constant SOURCE_TEXTURE]. See [enum TextureType] for options.
set_texture_type ::
                   (VisualShaderNodeTexture :< cls, Object :< cls) =>
                   cls -> Int -> IO ()
set_texture_type cls arg1
  = withVariantArray [toVariant arg1]
      (\ (arrPtr, len) ->
         godot_method_bind_call bindVisualShaderNodeTexture_set_texture_type
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)