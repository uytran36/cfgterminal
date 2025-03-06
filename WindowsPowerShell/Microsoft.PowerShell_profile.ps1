oh-my-posh init pwsh | Invoke-Expression

oh-my-posh init pwsh --config 'C:/Users/uytra/Documents/powerlevel10k_rainbow.omp.json' | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# PSFzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
# PSFzf config preview
$env:FZF_DEFAULT_OPTS="--prompt '⯈ ' --height 95% --layout=reverse --border 
--color=dark
--color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
--color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7"
$env:FD_OPTIONS="--hidden --follow"
$env:FZF_DEFAULT_COMMAND="fd --type f --type l {0}" -f $env:FD_OPTION
$env:FZF_CTRL_T_OPTS='--preview "bat --style=numbers,changes,header --color=always --theme=Dracula --line-range :500 {}  || cat {}"'


# PSReadLine
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionSource History

# Alias
Set-Alias ll ls
Set-Alias gf "git fetch"
Set-Alias ga "git add ."
Set-Alias gcmt "git commit -m"
Set-Alias gpsh "git push"
Set-Alias gpl "git pull"
