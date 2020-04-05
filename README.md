This project will add an "Add To Path" option to your Windows 10 right-click context menu without installing any third party software.
The Path Variable this script is adding your folde-paths to, is only for your User, not System wide. 
Selecting multiple folders and executing this right click function will add all folders of your selection to path.

The Manual Equivalent of this script is Opening 
"System Properties" -> "Environment Variables" -> "User variables for <Username>" -> ...

Variants:
 - Silent: Adding a folder happens silently (a powershell windows pops up very quick but closes immediately)
 - Normal: Adding a folder gives you a text Output of what happened and which Folder was added 
 
 Preview: 
 https://media.giphy.com/media/jqwVXvBvo4p3Pqe4WD/giphy.gif
