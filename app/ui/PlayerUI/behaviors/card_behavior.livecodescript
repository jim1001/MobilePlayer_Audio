script "card_behavior"
local sPlayer1ID, sPlayer2ID  
on openCard
   local tFile1, tFile2
   put levureAppFolder() & "/assets/test1.m4a" into tFile1
   put levureAppFolder() & "/assets/test2.m4a" into tFile2
   #    put levureAppFolder() & "/assets/test1.webm" into tFile1
   #    put levureAppFolder() & "/assets/test2.webm" into tFile2
   set the rect of graphic "rect1" to 10,10,410,12
   set the left of button "Show1" to the right of graphic "rect1" + 10
   set the top of button "Show1" to the top of graphic "rect1" + 10
   set the width of button "Show1" to 30
   set the rect of graphic "rect2" to 10,100,410, 102
   set the left of button "Show2" to the right of graphic "rect2" + 10
   set the top of button "Show2" to the top of graphic "rect2" + 10
   set the width of button "Show2" to 30
   set the visible of graphic "rect1" to false
   set the visible of graphic "rect2" to false
   put  initVideoMobile("rect1", tFile1) into sPlayer1ID
   put  initVideoMobile("rect2", tFile2) into sPlayer2ID
   
   #   answer "IDs:" && sPlayer1ID && sPlayer2ID
end openCard

command showController pButton
   switch pButton
      case "Show1"
         answer "showControl1"
         mobileControlSet sPlayer1ID, "showController", true
      case "Show2"
         answer "showControl2"
         mobileControlSet sPlayer2ID, "showController", true
   end switch
end showController
