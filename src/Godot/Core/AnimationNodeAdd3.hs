{-# LANGUAGE DerivingStrategies, GeneralizedNewtypeDeriving,
  TypeFamilies, TypeOperators, FlexibleContexts, DataKinds #-}
module Godot.Core.AnimationNodeAdd3
       (Godot.Core.AnimationNodeAdd3.is_using_sync,
        Godot.Core.AnimationNodeAdd3.set_use_sync)
       where
import Data.Coerce
import Foreign.C
import Godot.Internal.Dispatch
import System.IO.Unsafe
import Godot.Gdnative.Internal
import Godot.Api.Types

{-# NOINLINE bindAnimationNodeAdd3_is_using_sync #-}

-- | If [code]true[/code], sets the [code]optimization[/code] to [code]false[/code] when calling [method AnimationNode.blend_input], forcing the blended animations to update every frame.
bindAnimationNodeAdd3_is_using_sync :: MethodBind
bindAnimationNodeAdd3_is_using_sync
  = unsafePerformIO $
      withCString "AnimationNodeAdd3" $
        \ clsNamePtr ->
          withCString "is_using_sync" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

-- | If [code]true[/code], sets the [code]optimization[/code] to [code]false[/code] when calling [method AnimationNode.blend_input], forcing the blended animations to update every frame.
is_using_sync ::
                (AnimationNodeAdd3 :< cls, Object :< cls) => cls -> IO Bool
is_using_sync cls
  = withVariantArray []
      (\ (arrPtr, len) ->
         godot_method_bind_call bindAnimationNodeAdd3_is_using_sync
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindAnimationNodeAdd3_set_use_sync #-}

-- | If [code]true[/code], sets the [code]optimization[/code] to [code]false[/code] when calling [method AnimationNode.blend_input], forcing the blended animations to update every frame.
bindAnimationNodeAdd3_set_use_sync :: MethodBind
bindAnimationNodeAdd3_set_use_sync
  = unsafePerformIO $
      withCString "AnimationNodeAdd3" $
        \ clsNamePtr ->
          withCString "set_use_sync" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

-- | If [code]true[/code], sets the [code]optimization[/code] to [code]false[/code] when calling [method AnimationNode.blend_input], forcing the blended animations to update every frame.
set_use_sync ::
               (AnimationNodeAdd3 :< cls, Object :< cls) => cls -> Bool -> IO ()
set_use_sync cls arg1
  = withVariantArray [toVariant arg1]
      (\ (arrPtr, len) ->
         godot_method_bind_call bindAnimationNodeAdd3_set_use_sync
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)