import XMonad
import XMonad.Hooks.Rescreen
import XMonad.Hooks.SetWMName

myRandrChangeHook :: X ()
myRandrChangeHook = spawn "xrandr --auto"

rescreenCfg = def { randrChangeHook = myRandrChangeHook }

main = xmonad
     $ rescreenHook rescreenCfg 
     $ def { terminal = "st"
           , modMask  = mod4Mask
           , startupHook = do
               setWMName "LG3D" -- support for java swing gui apps
           }
