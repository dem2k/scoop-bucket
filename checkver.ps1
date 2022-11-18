if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = resolve-path (split-path (split-path (scoop which scoop))) }
$checkver = "$env:SCOOP_HOME/bin/checkver.ps1"
$cmd = "'$checkver' -dir '$psscriptroot' $($args | foreach { "$_ " })"
write-host $cmd
Invoke-Expression -command "& $cmd"
