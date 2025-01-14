#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|
#
# -----------------------------------------------------
# Load modular configation
# -----------------------------------------------------

for f in ~/.config/zshrc/*; do
    if [ ! -d $f ]; then
        c=$(echo $f | sed -e "s=.config/zshrc=.config/zshrc/custom=")
        [[ -f $c ]] && source $c || source $f
    fi
done
