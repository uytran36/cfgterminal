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
function get-git-fetch {
  git fetch
}
Set-Alias -Name gf -Value get-git-fetch

function get-git-checkout {
  git checkout $args
}
Set-Alias -Name gco -Value get-git-checkout

function get-git-add {
  git add .
}
Set-Alias -Name ga -Value get-git-add

function get-git-commit {
  git commit -m $args
}
Set-Alias -Name gcmt -Value get-git-commit

function get-git-push {
  git push
}

Set-Alias -Name gpsh -Value get-git-push

function get-git-pull {
  git pull
}
Set-Alias -Name gpl -Value get-git-pull

function get-git-pull-origin {
  git pull origin $args
}
Set-Alias -Name gpo -Value get-git-pull-origin

function run-db-dev {
  cd C:\Users\admin\Downloads\secret_key
  .\ncop-dev-cloudsql.bat
}
Set-Alias -Name dbdev -Value run-db-dev

function run-db-test {
  cd C:\Users\admin\Downloads\secret_key
  .\ncop-test-cloudsql.bat
}
Set-Alias -Name dbtest -Value run-db-test

function run-db-stg {
  cd C:\Users\admin\Downloads\secret_key
  .\ncop-stg-cloudsql.bat
}
Set-Alias -Name dbstg -Value run-db-stg

function run-db-ods {
  cd 'C:\Program Files (x86)\Google\Cloud SDK'
  gcloud compute ssh sea1-uat-ods-pxy02 --tunnel-through-iap --zone=asia-southeast1-c --ssh-flag="-L 5444:localhost:5432"
}
Set-Alias -Name dbods -Value run-db-ods
