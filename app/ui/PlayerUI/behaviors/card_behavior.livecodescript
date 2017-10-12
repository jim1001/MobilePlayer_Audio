script "card_behavior"
local sPlayer1ID, sPlayer2ID  
on openCard
   local tFile1, tFile2
   put levureAppFolder() & "/assets/test1.m4a" into tFile1
   #put levureAppFolder() & "/assets/test2.m4a" into tFile2
   put levureAppFolder() & "/assets/test1.webm" into tFile2
   set the rect of button "place1" to 10,10,410,90
   set the rect of button "place2" to 10,the bottom of button "place1" + 10,410, the bottom of button "place1" + 300
   put  initVideoMobile(the rect of button "place1", tFile1) into sPlayer1ID
   put  initVideoMobile(the rect of button "place2", tFile2) into sPlayer2ID
   answer "BG color 2:" && mobileControlGet(sPlayer2ID, "backgroundColor")
   #   answer "IDs:" && sPlayer1ID && sPlayer2ID
end openCard

# command showController pButton
#    switch pButton
#       case "place1"
#          answer "place1"
#          mobileControlSet sPlayer1ID, "showController", true
#       case "place2"
#          answer "place2"
#          mobileControlSet sPlayer2ID, "showController", true
#    end switch
# end showController

