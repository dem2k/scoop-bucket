if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = resolve-path (split-path (split-path (scoop which scoop))) }
$dir = "$psscriptroot"
$checkver = "$env:SCOOP_HOME/bin/checkver.ps1"
Invoke-Expression -command "& '$checkver' -dir '$dir' $($args | foreach { "$_ " })"
