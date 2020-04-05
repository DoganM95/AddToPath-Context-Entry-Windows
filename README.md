## This project will add an "Add To Path" option to your Windows 10 right-click context menu without installing any third party software.

The manual equivalent of this script is opening  
"Control Panel" -> "System and Security" -> "System" -> "Advanced system settings" -> "Advanced" -> "Environment Variables"   
-> "User variables for <Username>" -> ...

Properties:
- Creates "Path" if not existing already
- Adds folder-paths to Path variable of your User, not System wide
- No duplicates when adding
- Supports Multi-Selection
- Optional console output about actions

Variants:
 - Silent: Adding a folder happens silently (a powershell windows pops up very quick but closes immediately)
 - Normal: Adding a folder gives you a text Output of what happened and which Folder was added 
 
 Preview: 
 https://media.giphy.com/media/jqwVXvBvo4p3Pqe4WD/giphy.gif
