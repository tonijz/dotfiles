import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
import XMonad.Prompt
import XMonad.Prompt.RunOrRaise
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Layout.Spacing

my_terminal = "urxvt"
term = \s -> spawn $ my_terminal++" -e "++s

myLayout = avoidStruts(noBorders Full ||| tiled ||| Mirror tiled)
	where
		
		-- default tiling algorithm partitions the screen into two panes  
		tiled = spacing 2 $ Tall nmaster delta ratio  
   
		-- The default number of windows in the master pane  
		nmaster = 1  
   
		-- Default proportion of screen occupied by master pane  
		ratio = 1/2  

		-- Percent of screen to increment by when resizing panes  
		delta = 5/100  

main = do
    conf <- dzen defaultConfig
    xmonad $ conf
        {
          modMask = mod4Mask
        , terminal = my_terminal
        , layoutHook =  myLayout 
        , XMonad.borderWidth = 1 
        , XMonad.normalBorderColor = "black"
        , XMonad.focusedBorderColor = "#1793d1"
        }
        `additionalKeysP`
        [
          ("M-S-a", spawn "subl -n")
        , ("M-S-v", term "vim")
        , ("M-S-f", spawn "firefox")
        , ("M1-C-<Delete>", term "glances")
        , ("<Print>", spawn "scrot '%Y-%m-%d_$wx$h.png' -e 'mv $f ~/Screenshots/'")
        , ("M-S-l", spawn "xscreensaver-command -lock")
        ]
