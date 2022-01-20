import XMonad
import XMonad.Hooks.Rescreen

myRandrChangeHook :: X ()
myRandrChangeHook = spawn "xrandr --auto"

rescreenCfg = def 
	{ randrChangeHook = myRandrChangeHook
	}

main = xmonad
     $ rescreenHook rescreenCfg 
		 $ def
      	{ terminal	= "st"
      	, modMask	= mod4Mask
      	}
