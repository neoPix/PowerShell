# About parameters

On many CmdLet you can use paramaters. Those are documented in the help system in the **Syntax** and **Parameters** sections.

Some are mandatory, other are not. If you look in the **Syntax** section, some of thme are surrounded by []. It does mean that the parameter is not mandatory.

```
[-Path <String> ] // Here the Path parameter is not mandatory
```

For some parameters, it's even the name that's not mandatory. e.g.

```
[[-Name] <String> ] // So you can use it as -Name test or directly test

Get-Help -Name Get-Service
//or
Get-Help Get-Service
```

The element that is present between the <> character specify the type of data that the parameter does take. You usually find the following two : 

 - String : a string of characters
 - Int : an integer

Sometimes, a parameter type will be a little more specific and look like this : `<String[]>`. In this case, it does not mean that the value is not mandatory but that it takes multiple values. This is the symbol for arrays.

```
Get-Help -Component Exchange,ActiveDirectory // All the values of an array are separated with a comma (,)
```

## Common Parameters

Common parameters can be used by any CmdLet.

Here is the list of the included parameters :

 - -Debug
 - -ErrorAction
 - -ErrorVariable
 - -OutVariable
 - -OutBuffer
 - -PipelineVariable
 - -Verbose
 - -WarningAction
 - -WarningVariable

The risk mitigation parameters are:

 - -WhatIf
 - -Confirm

There are mostly used for debugging and to confirm what you are doing.

`-WhatIf` will display what will appen if you process this command but without doing it.

`-Confirm` will do the same as `-WhatIf` but will allow you to execute the command if you want to.

For more informations you can type `Get-Help about_CommonParameters`.
