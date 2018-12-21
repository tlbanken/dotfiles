# Note this theme is a fork off of the lambda and lambda-glister themes
# These themes can be found off the on my zsh repo in themes and external themes

# lambda is red if error occurs, green otherwise
local ret_status="%(?:%{$fg_bold[green]%}λ :%{$fg_bold[red]%}λ %s)"

# if in git directory, will print local path, otherwise full path
function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

# LAMBDA - user - [pwd]
PROMPT='$ret_status%{$fg_bold[yellow]%}$USER %{$fg_bold[green]%}[%{$fg[white]%}$(get_pwd)$(git_prompt_info)%{$reset_color%}%{$reset_color%}%{$fg_bold[green]%}] %{$reset_color%}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✓%{$reset_color%} "

