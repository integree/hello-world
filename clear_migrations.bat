powershell.exe "get-childitem $MyInvocation.MyCommand.Path -include *colorphoto_color.py -recurse | foreach ($_) {echo $_.fullname Deleted; del $_.fullname}; get-childitem $MyInvocation.MyCommand.Path -include *_initial.py -recurse | foreach ($_) {echo $_.fullname Deleted; del $_.fullname}; get-childitem $MyInvocation.MyCommand.Path -include *_auto_*.py -recurse | foreach ($_) {echo $_.fullname Deleted; del $_.fullname}"