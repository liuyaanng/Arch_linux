#function time --description="Bash time function"
#  command time --portability $argv
#end
#alias time "bash -c time"
set -g -x RANGER_LOAD_DEFAULT_RC FALSE
export PATH="/home/kevin/anaconda3/bin:$PATH"

# Start X at login
if status is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end
