﻿script "stack_behavior"
function initVideoMobile pRect, pVideoFile
   # answer "file:" && pVideoFile
   local tPlayerID
   // Check the control doesn't already exist. If so delete and recreate it
   if tPlayerID is among the lines of mobileControls() then
      mobileControlDelete tPlayerID
   end if 
   mobileControlCreate "player"
   put the result into tPlayerID
   # In LiveCode the rectangle of an object consists of four integers separated by commas
   # representing the object's left, top, right, and bottom edges
   mobileControlSet tPlayerID, "rect", pRect --the second argument (tPlayerRect here) must be one string containing 4 comma separated numbers, not 4 individual numeric arguments  
   mobileControlSet tPlayerID, "showController", true
   if pVideoFile is not empty then
      #answer "Setting file of player"
      mobileControlSet tPlayerID, "filename", pVideoFile
   end if
   mobileControlSet tPlayerID, "visible", true
   #mobileControlSet tPlayerID, "backgroundColor", "255,255,255,122" -- R,G,B,alpha (had no effect)
   mobileControlSet tPlayerID, "backgroundColor", "white"
   mobileControlSet tPlayerID, "alpha", "122"
   return tPlayerID
end initVideoMobile
