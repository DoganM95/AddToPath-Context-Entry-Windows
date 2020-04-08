## This project will add an "Add To Path" option to your Windows 10 right-click context menu without installing any third party software.

The manual equivalent of this script is opening  
"Control Panel" -> "System and Security" -> "System" -> "Advanced system settings" -> "Advanced" -> "Environment Variables"   
-> "User variables for <Username>" -> ...

Properties:
- Creates "Path" if not existing already
- Adds folder-paths to Path variable of your user, not system-wide
- No duplicates when adding
- Supports multi-selection
- Doesn't need admin rights
- Optional console output about actions

Variants:
 - Silent: Adding a folder happens silently (a powershell windows pops up very quick but closes immediately)
 - Normal: Adding a folder gives you a text Output of what happened and which Folder was added 
 
 Preview: 
 [AddToPath GIF Image](Preview.gif)
