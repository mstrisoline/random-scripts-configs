# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$fg_no_bold[green]%}%n%{$fg[white]%}@%{$fg_no_bold[blue]%}%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[yellow]%} %~%{$reset_color%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local git_branch='$(git_prompt_info) $(git_prompt_status)%{$reset_color%}'

#PROMPT="╭─${user_host} ${current_dir} ${rvm_ruby} ${git_branch}
PROMPT="╭─${user_host} ${current_dir} ${rvm_ruby} $RPROMPT $(virtualenv_prompt_info)
╰─%B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
