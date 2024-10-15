# Personalized by z0ok. Based on kali linux theme.

# Unpaint
END="%{$reset_color%}"

# Current date/time in dd.mm.yy HH:mm
Z_CURRENT_TIME_="$fg[blue]%D{%H:%M %d.%m.%y}$END"

# Current hostname
Z_CURRENT_HOST_="$fg_bold[cyan]%m$END"

# Current user is root
[ "$EUID" -eq 0 ] && Z_CURRENT_USER_="$fg_bold[red]%n$END"
[ "$EUID" -ne 0 ] && Z_CURRENT_USER_="$fg_bold[cyan]%n$END"
Z_USER_HOST_="$Z_CURRENT_USER_$fg_bold[cyan]@%{$reset_color%}$Z_CURRENT_HOST_"

# Current path
Z_CURRENT_PATH_="$fg[yellow]%d$END"

# Graphics
Z_PREFIX_="$fg[green]┌──[$END"
Z_DELIM_="$fg[green]]─[$END"
Z_END_="$fg[green]]$END"

# Red $ for root and blue $ for user
[ "$EUID" -eq 0 ] && Z_DELIM_U_="$fg_bold[red]\$$END"
[ "$EUID" -ne 0 ] && Z_DELIM_U_="$fg_bold[blue]\$$END"
Z_NEW_LINE_="$fg[green]└─$Z_DELIM_U_$END "

# Put it all together!
#PROMPT="$DALLAS_CURRENT_TIME_\$(ruby_prompt_info)$DALLAS_CURRENT_MACH_$DALLAS_CURRENT_LOCA_ $DALLAS_CURRENT_USER_$DALLAS_PROMPT_CHAR_ "
PROMPT="
$Z_PREFIX_$Z_USER_HOST_$Z_DELIM_$Z_CURRENT_TIME_$Z_DELIM_$Z_CURRENT_PATH_$Z_END_
$Z_NEW_LINE_"
