# Getting help

as `Jeffrey Snover` once said :

```
When in trouble, fear or doubt, run in circles scream and shout.
```

PS provides a greate integrated help system. The CmdLet you'll have to memorize is the following : 

```
Get-Help
```

Then you'll have to type the CmdLet you want to get help on, for example `Get-Service` or even with the wildcard character `Get-S*`

```
Get-Help Get-Service
Get-Help Get-*
```

The PS 3.0 help system use a Microsoft online database to automatically update itself once in a while, you can also force it by using the CmdLet `Update-Help -Force`. In PS 2.0, well it's a bit more complicated, you'll have to update it manually.

You can display the full help using the `-Full` parameter, only examples using the `-Examples` parameter and you can even open the help in a separate window using the `-ShowWindow` parameter.

```
Get-Help Get-Service -Full
Get-Help Get-Service -Examples
Get-Help Get-Service -ShowWindow
```

## Topics

You can also get help on multiple topics. Those have a name starting with about_ followed by the topic in question. So you can type `Get-Help about_Operators` to get informations about operators or `Get-Help about_Scripts` to get more informations about scripting.

## Online

If you're using PS 2.0 or do not have access to you're Window computer (using Linux and such) but want to get the latest informations in the docuentation, you can simply search online in the [MSDN documentation](https://technet.microsoft.com/en-us/library/hh847841.aspx).