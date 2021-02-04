import XMonad
import XMonad.Hooks.Script

main = xmonad def {
	modMask  = mod4Mask,
	terminal = "st",
	startupHook = execScriptHook "startup"
}
