oh-my-posh init pwsh | Invoke-Expression

oh-my-posh init pwsh --config 'C:/Users/admin/Documents/powerlevel10k_rainbow.omp.json' | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons


# PSReadLine
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete