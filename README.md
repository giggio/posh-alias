# Posh-Alias

A better alias than `Set-Alias`.

## Usage

```powershell
Add-Alias ls 'ls -force'
Add-Alias add 'git add'
```

## Running tests:

```powershell
Invoke-Pester
```

Or, if you have [nodemon](http://nodemon.io/):

```powershell
nodemon --ext "ps1,psd1,psm1" --exec "powershell -command invoke-pester -EnableExit"
```
