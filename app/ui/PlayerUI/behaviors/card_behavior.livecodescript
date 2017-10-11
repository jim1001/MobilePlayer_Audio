script "card_behavior"
local sPlayer1ID, sPlayer2ID  
on openCard
   local tFile1, tFile2
   put levureAppFolder() & "/assets/test1.m4a" into tFile1
   put levureAppFolder() & "/assets/test2.m4a" into tFile2
   #    put levureAppFolder() & "/assets/test1.webm" into tFile1
   #    put levureAppFolder() & "/assets/test2.webm" into tFile2
   set the visible of graphic "rect1" to false
   set the visible of graphic "rect2" to false
   put  initVideoMobile("rect1", tFile1) into sPlayer1ID
   put  initVideoMobile("rect2", tFile2) into sPlayer2ID
   answer "IDs:" && sPlayer1ID && sPlayer2ID
end openCard
