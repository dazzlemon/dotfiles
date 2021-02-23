import XMonad
import XMonad.Hooks.Script
import XMonad.Hooks.SetWMName

main = xmonad def {
	modMask  = mod4Mask,
	terminal = "st",
	startupHook = do
		execScriptHook "startup"
		setWMName "LG3D"
}
