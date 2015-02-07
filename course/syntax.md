# Syntax

PowerShell is based on Cmdlet (pronounce Command Let) that represent the actions you can make, the syntax of PS comes as follow :

`Verb`-`Noun`

So you'll use commands like those : 

```
Get-Service
Get-Process
Get-Help
Sort-Object
```

## Alias

Of course, we've seen in "[What is PowerShell](./course/whatisit.md)" that you can use `dir`, `ls` and many other dos and unix commands that looks familiar but dont match this format. This is working cause au alias. An alias is a shortcut to a command, you can use `Get-Alias` to get them all and even search them by name : `Get-Alias -name dir` or even by part of the name using the wildcard character `*` as follow : `Get-Alias -name d*`.

The Get-Alias CmdLet as also an alias to itself that's `gal`.

You can also create and edit your own aliases by using `Set-Alias` or `sal`, here is a sample of this : 

```
Set-Alias go set-location \
Set-Alias np c:\windows\notepad.exe
```

I can now type np in PowerShell and notepad will open.