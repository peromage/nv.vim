# Default PSReadline color scheme
$DEFAULT_PSCOLORS = @"
{
    "Command":  "\u001b[93m",
    "Comment":  "\u001b[32m",
    "ContinuationPrompt":  "\u001b[37m",
    "Default":  "\u001b[37m",
    "Emphasis":  "\u001b[96m",
    "Error":  "\u001b[91m",
    "Keyword":  "\u001b[92m",
    "Member":  "\u001b[97m",
    "Number":  "\u001b[97m",
    "Operator":  "\u001b[90m",
    "Parameter":  "\u001b[90m",
    "Selection":  "\u001b[30;47m",
    "String":  "\u001b[36m",
    "Type":  "\u001b[37m",
    "Variable":  "\u001b[92m"
}
"@

# Default color theme (ini format)
$DEFAULT_SCHEME = @"
[table]
DARK_BLACK = 12,12,12
DARK_BLUE = 0,55,218
DARK_GREEN = 19,161,14
DARK_CYAN = 58,150,221
DARK_RED = 197,15,31
DARK_MAGENTA = 136,23,152
DARK_YELLOW = 193,156,0
DARK_WHITE = 204,204,204
BRIGHT_BLACK = 118,118,118
BRIGHT_BLUE = 59,120,255
BRIGHT_GREEN = 22,198,12
BRIGHT_CYAN = 97,214,214
BRIGHT_RED = 231,72,86
BRIGHT_MAGENTA = 180,0,158
BRIGHT_YELLOW = 249,241,165
BRIGHT_WHITE = 242,242,242

[screen]
FOREGROUND = DARK_WHITE
BACKGROUND = DARK_BLACK

[popup]
FOREGROUND = DARK_CYAN
BACKGROUND = BRIGHT_WHITE
"@

# Default style
function DEFAULT_PROMPT {
    return "PS $pwd> "
}

# Local save dir
$ROOTDIR = (Resolve-Path "$PSScriptRoot\..\").Path
$SAVEDIR = Join-Path $ROOTDIR ".save\"

# Syler related
$SAVED_PSCOLOR_PATH = Join-Path $SAVEDIR "saved_pscolor.json"
$SAVED_SCHEME_PATH = Join-Path $SAVEDIR "saved_scheme.ini"
$COLORTOOL = Join-Path $ROOTDIR "styles\ColorTool.exe"
$PROMPTS_DIR = Join-Path $ROOTDIR "styles\prompts\"
$PSCOLORS_DIR = Join-Path $ROOTDIR "styles\pscolors\"
$SCHEMES_DIR = Join-Path $ROOTDIR "styles\schemes\"

# Shim related
$DEFAULT_LIB_PATH = Join-Path $HOME ".local\lib\"
$DEFAULT_BIN_PATH = Join-Path $HOME ".local\bin\"
$PACKAGES_DIR = Join-Path $ROOTDIR "packages\"
$SHIM_SRC_PATH = Join-Path $ROOTDIR "shim_src\shim.cs"

Export-ModuleMember -Variable * -Function *