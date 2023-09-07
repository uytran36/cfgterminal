oh-my-posh init pwsh | Invoke-Expression

oh-my-posh init pwsh --config 'C:/Users/uytra/Documents/powerlevel10k_rainbow.omp.json' | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# PSFzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'


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