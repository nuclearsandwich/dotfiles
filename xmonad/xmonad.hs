import XMonad hiding (Tall)
import XMonad.Layout.HintedTile
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.LayoutHints
import System.Exit
import qualified XMonad.StackSet as W
import qualified Data.Map        as M

-- The main function.
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

-- Command to launch the bar.
myBar = "xmobar"

-- Custom PP, configure it as you like. It determines what's being written to
-- the bar.
myPP = xmobarPP { ppCurrent = xmobarColor m_orange "" . wrap "<" ">" }

-- Keybinding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

myConfig = defaultConfig
    {
        terminal           = "urxvt"
      , modMask            = mod4Mask
      , borderWidth        = 1
      , workspaces         = workspaces'
      , normalBorderColor  = m_blue
      , focusedBorderColor = m_green
      --, handleEventHook    = fullscreenEventHook
      -- key bindings
      , keys               = keys'
      , layoutHook = layout'
    }

-- The default number of workspaces (virtual screens) and their names.
-- By default we use numeric strings, but any string may be used as a
-- workspace name. The number of workspaces is determined by the length
-- of this list.
--
-- A tagging example:
--
-- > workspaces = ["web", "irc", "code" ] ++ map show [4..9]
--
workspaces' = ["sys","www","dev","com","mail","pro","bonus","status","nine"]

-- Layout Configs
layout' = hintedTile Tall ||| hintedTile Wide ||| Full
  where
    hintedTile = HintedTile nmaster delta ratio TopLeft
    nmaster = 1
    ratio = 1/2
    delta = 3/100


------------------------------------------------------------------------
-- Key bindings. Add, modify or remove key bindings here.
keys' conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
    -- launch a terminal
    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)
 
    -- launch dmenu
    , ((modm,               xK_space     ),     spawn dmenu_cmd)
 
    -- launch gmrun
    , ((modm .|. shiftMask, xK_p     ), spawn "gmrun")
 
    -- close focused window
    , ((modm .|. shiftMask, xK_c     ), kill)
 
     -- Rotate through the available layout algorithms
    , ((modm,               xK_comma ), sendMessage NextLayout)
 
    --  Reset the layouts on the current workspace to default
    , ((modm,               xK_period ), setLayout $ XMonad.layoutHook conf)
 
    -- Resize viewed windows to the correct size
    , ((modm,               xK_n     ), refresh)
 
    -- Move focus to the next window
    , ((modm,               xK_Tab   ), windows W.focusDown)
 
    -- Move focus to the next window
    , ((modm,               xK_j     ), windows W.focusDown)
 
    -- Move focus to the previous window
    , ((modm,               xK_k     ), windows W.focusUp  )
 
    -- Move focus to the master window
    , ((modm,               xK_m     ), windows W.focusMaster  )
 
    -- Swap the focused window and the master window
    , ((modm,               xK_Return), windows W.swapMaster)
 
    -- Swap the focused window with the next window
    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )
 
    -- Swap the focused window with the previous window
    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )
 
    -- Shrink the master area
    , ((modm,               xK_h     ), sendMessage Shrink)
 
    -- Expand the master area
    , ((modm,               xK_l     ), sendMessage Expand)
 
    -- Push window back into tiling
    , ((modm,               xK_t     ), withFocused $ windows . W.sink)
 
    -- Increment the number of windows in the master area
    , ((modm .|. shiftMask, xK_h ), sendMessage (IncMasterN 1))
 
    -- Deincrement the number of windows in the master area
    , ((modm .|. shiftMask, xK_l), sendMessage (IncMasterN (-1)))
 
    -- Toggle the status bar gap
    -- Use this binding with avoidStruts from Hooks.ManageDocks.
    -- See also the statusBar function from Hooks.DynamicLog.
    --
    -- , ((modm              , xK_b     ), sendMessage ToggleStruts)
 
    -- Quit xmonad
    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))
 
    -- Restart xmonad
    , ((modm              , xK_q     ),
        spawn "xmonad --recompile; xmonad --restart")
    ]
    ++
 
    --
    -- mod-[1..9], Switch to workspace N
    --
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    --
    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    ++
 
    --
    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3
    --
    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]

-- Commands
dmenu_cmd = "dmenu_run"

-- Monokai colors
m_black   =  "#000000"
m_red     =  "#e52222"
m_green   =  "#a6e32d"
m_yellow  =  "#fc951e"
m_blue    =  "#c48dff"
m_magenta =  "#fa2573"
m_cyan    =  "#67d9f0"
m_white   =  "#f2f2f2"

-- Solarized colors
s_base03 = "#002b36"
s_base02 = "#073642"
s_base01 = "#586e75"
s_base00 = "#657b83"
s_base0 = "#839496"
s_base1 = "#93a1a1"
s_base2 = "#eee8d5"
s_base3 = "#fdf6e3"
s_yellow = "#b58900"
s_orange = "#cb4b16"
s_red = "#dc322f"
s_magenta = "#d33682"
s_violet = "#6c71c4"
s_blue = "#268bd2"
s_cyan = "#2aa198"
--s_green = "#859900" -- original
s_green = "#719e07" -- experimental

