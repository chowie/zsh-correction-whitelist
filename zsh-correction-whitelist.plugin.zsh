PWD="$(pwd)"

_zsh_correction_whitelist() {

    string="$1"

    if ! _zsh_correction_whitelist_isAlias "$string"
    then
        alias "${string}"="nocorrect ${string}"
    else
        alias "$string"
    fi

}

_zsh_correction_whitelist_isAlias() {

    string="$1"

    if [[ $string =~ .*=.* ]]
    then
        return 0
    else
        return 1
    fi

}

source "$PWD/defaults.conf"

if [ -f "$ZSH_CORRECTION_WHITELIST_CONF" ]
then
    source "$ZSH_CORRECTION_WHITELIST_CONF"
fi

export ZSH_CORRECTION_WHITELIST_FILE
export ZSH_CORRECTION_WHITELIST_CONF

if [ -f $ZSH_CORRECTION_WHITELIST_FILE ]
then
    for word in $(cat "$ZSH_CORRECTION_WHITELIST_FILE");
    do
        _zsh_correction_whitelist "$word"
    done
else
    echo "$ZSH_CORRECTION_WHITELIST_FILE does not exist!  Skipping..."
fi

