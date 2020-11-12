
require 'pry'

class Logo
def self.frame_0
puts "
                                                       .-.            
         ``  dh+-    ./`                    `yys`  yNNs+:`            
         -+shNN.:+` dNy-                    +ysy``//++-               
                  .   sMd-                +mNh`  .:.//.               
             -osso:   `hMM+     `::--`  :hMd:     .ymNss/.            
             `oNs       oMmy/yyhyoosydmhMd:         `/.  .            
            `o/`         oNssydyy.    -dN/                            
      ``..--..-:::::-:::oh:ym+-.``..`   oM+                           
  hNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNMMmmhddhhyysssssossoooo+o+o` 
  yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM/ 
  oMMMMNdhyyyyyyoo+++++o+oosssosso+//::-::///++ssssshMMMMhoMMMysNMMM` 
  /MMMh`-:     -+syysysoo+++///:/++osyhhhyys+:`   `/:+MMMmdMNMyyNMMN  
  /MMMN   -:/ss+-`  .:/ooshyyyyyysso+/`   `.:+sys/:  `MMMms+ `hMMMMy  
  :MMMM.   h: -yNMmMMMNNNmmdddddmdmMMMm` -:::::-.y:  `MMm+N-`h MMMM:  
  `MMMM:  y+ oMNo.``                ``      `.:::+m   NMm:: s+:MMMN   
   NMMM: -h yMd.                             `.-::m/  MMM+`-:oNMMMh   
  `MMMM+ h/ hm`                                   oh .MMMMhsMMMMMMo   
   NMMM+ m` ``                                    /m :MMMMmNMMMMMM:   
   dMMMo.d                                        `M`+MMM+h/ooNMMM.   
   yMMMs:h                                         N`oMMh+sm/y/MMN    
   hMMM/+y                                         N`yMMd+osd.yMMd    
   yMMM/:h                                         N`NMMMNs/:+mMMo    
   yMMMo.d                                        .N NMhhhyyyyodM:    
   yMMMy h.                                       :d-MM:dssNhhyhM-    
   /MMMy s/                                    ``.h//MM-yyyyss-mM.    
   :MMMh .d--:::-...`                      `-::ooom`+MM-hdddhh-NN     
   :MMMm  ys///+/...                        `::. o+ sMm-yyyyyh-Md     
   `MMMN  -d`                                   /s  yMy/yysooo:Mh     
    NMMN   oy++/--.                      .-:::++y`  mMhodhyss/sM+     
    NMMM`:/`   .-:/+oooooo+++/++++//++//+/:.     ://MMysddhyy:mM/     
    dMMMdo////+++/+ooooooosssysyyyyyyyhyhhdddhhhyhhMMMmyhyhys/NM`     
    +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd      
    :NddyhmsyyMyooooosssssooossssossooossyyyysssssysyhNdhhMdhdh/      
         `d/-sy                                       ss.:m`          
           -::                                         .+/`   "
    sleep (0.09)
    system 'clear'
end

def self.frame_1
puts "                                                  `.--::-            
             hho:`   ::                     `oo.  -hMms/:`            
         :/oymm`-:.`dd+`                    -/ss -::-:`               
             `.  ``  `myd-               `omyo   `- -+.               
            `/sso+-   :NMMs`  `--::-.  `oNMd-     -shMys+-            
             :hdo      .hMMdhhso++/+ohdNMh:          ::  `            
          `+o+-          dmhhhhysoo.  `omo                            
       ``..--:::/++++++ooNmMy//////:::--:Ny                           
 .dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNmmmmmddddddddhyssso+/. 
 :MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy 
 :MMMMMNyssssoooooo//////////:----.`...-..-:://++o+shMMMMh+MMMhsmMMMy 
 .MMMMM.//`     `-+ooso+/++///++/+oss+oooo/-`      ::.MMMmdMNNhsNMMM/ 
  MMMMM` `/+.+o/:-`.:+syhdmmmmmddhs:      .:osso:::` -MMMdo+. yMMMMM. 
  NMMMM`   os` -ohNMMMMMMMMMMMNMNmd+      : `:.`+s   `MMd:N: /.mMMMh  
  mMMMM.  h/ /mMMmso/-. ```.```              `://+o  `MMd:/ `y.+MMMy  
  dMMMM. +s oMMh-                             `.-`o: -MMMh.``-oNMMM/  
  yMMMM/ N``MMs                                    h .MMMMmhmMMMMMN`  
  oMMMM/-m  ::                                     +:/MMMMMMMMMMMMs   
  /MMMM/:h`hd.                                     -o+MMMyy+osdMMM/   
  .MMMM+/s .-                                      :/oMMyo/NoN-MMM.   
  `MMMMo:h                                         +/oMM+sh/N:`NMd    
   NMMM+.m                                         +/yMMNo/`..mMMo    
   dMMM/ m                                         s:hMhyso/:osNM-    
   dMMM+ y.                                        d`NMooo+dhmhhM.    
   sMMMo o:                                       `d-MM+hhdhhh+mm     
   :MMMy `h:---:--..                        . -/+sd/:MN/hddmmd-Ms     
   /MMMh  :y//:-`````                       ``.--ys sMmoyyyhmd:M+     
   :MMMh   s-                                  .s- `NMhsyssyhd+M-     
   `MMMy  `/oy+/+::.`              ```..:/+o+++/:. /MMhhhhyyy+yM`     
    NMMN ::      `.-/+oooo+o+oosssssooo::-.      :/sMMsddhdddodN      
    mMMMho+++/++////+oo+///+/++++o+o+++ooosssyyhhhdMMMdhhhyyhsMd      
   `yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm+   ```
   +yyyhhMdhdNhhyyyyhhyyyyysssssyssossssssyyyyyhdhddmNddNMNNms        
         hy:my                                      -m:/m-            
          ::.                                        `/+`             "
          sleep (0.09)
          system 'clear'
end

def self.frame_2
puts "  .+s                     .yy+                      
                   .Nd/.                  `:/sy+                      
                      ods:              `+Nyhs                        
                      .mm+o   `-::++:. -mMMNy`                        
                       `yMohyhyso+//+hmMMNd-                          
                        `hm++ssos+`   `/NN                            
   .:/+++ooosoosooossssymNyNmyssosoo++++yM/--````                     
 +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNmmmmddhysoso+++-  
 /MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd  
 /MMMMMNdddhhhhhhyyysssoossyyysoo+///:--:--:+o+++++++ymMMy:NMMysdMMy  
 /MMMMM/o/      ./oo+++o++ooossyooosssyss/:.       -/`hMMNmMmNysmMMy  
 :MMMMM` -o+`+so/-./shdMMMMMMMMMMMd/    `.:+oshs-//`  NMMmo/` hMMMMs  
 `MMMMM:   /s.`+hNMMMMNmNmmmMMMMNmd+`    -::--..y/   `MMd/m. s.dMMM/  
  mMMMM:  /: /MMMho:.`       ``   .//.       `-.-o/  .MMd:- sN`oMMM.  
  hMMMM: .s -MMh.    `/o++ossy++shy:/shy/.:yhydyosd` /MMMh.`..oMMMN   
  yMMMM: y` om+         .`    .-.      `/so-    `.o/ +MMMMmymMMMMMd   
  oMMMM:.s .o.                                    :+ oMMMMMMMMMMMMs   
  +MMMM/// +m-                                    `y oMMMoy+oomMMM-   
  -MMMMso:                                         d sMMm+sN/N:MMM`   
  -MMMMo+/                                        `d hMMyodsm::MMN    
   NMMMs:s                                        .h hMMMh/.:-MMM+    
   dMMMs h                                        /o dMossys+symM-    
   yMMMs y`                      /o+/.            o/ mM-o:odhshoN     
   oMMMh :/   `/sso//oddyhdhs/. +M+:/ydho:.-so    h.`Mm-hyhhyh+hd     
   oMMMd  yomsyo//+oo:     `-ohddo     `/oyy:    .h `Md:soooos:No     
   +MMMm  -s::+o+.``                            `h: :Mh:so++oo-M:     
   -MMMM.  +:                                `/yd:  /Mooyssooo:M`     
    NMMM.  /osoo/:-.`                   `-:syyos+`  oM/ysoooo+ym      
    dMMM+++`    `-:+oosossossssysssssyyos+:.    `/+`sM-hysssy/Ns      
    yMMMmo/://////////:::://////++ososoosyyssssso+odmMsysysysoM:      
    /MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.      
    `yyhyyNyyhNyssosysssyysyyyyyyyysssyyyyyyyyyyyhyyhhNddmNmmmd       
          y:`s+                                       o. s/           
           -/-                                        `/+-            "
    sleep (0.09)
    system 'clear'
end

def self.frame_3
puts "                                                       .-.            
         ``  dh+-    ./`                    `yys`  yNNs+:`            
         -+shNN.:+` dNy-                    +ysy``//++-               
                  .   sMd-                +mNh`  .:.//.               
             -osso:   `hMM+     `::--`  :hMd:     .ymNss/.            
             `oNs       oMmy/yyhyoosydmhMd:         `/.  .            
            `o/`         oNssydyy.    -dN/                            
      ``..--..-:::::-:::oh:ym+-.``..`   oM+                           
  hNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNMMmmhddhhyysssssossoooo+o+o` 
  yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM/ 
  oMMMMNdhyyyyyyoo+++++o+oosssosso+//::-::///++ssssshMMMMhoMMMysNMMM` 
  /MMMh`-:     -+syysysoo+++///:/++osyhhhyys+:`   `/:+MMMmdMNMyyNMMN  
  /MMMN   -:/ss+-`  .:/ooshyyyyyysso+/`   `.:+sys/:  `MMMms+ `hMMMMy  
  :MMMM.   h: -yNMmMMMNNNmmdddddmdmMMMm` -:::::-.y:  `MMm+N-`h MMMM:  
  `MMMM:  y+ oMNo.``                ``      `.:::+m   NMm:: s+:MMMN   
   NMMM: -h yMd.                             `.-::m/  MMM+`-:oNMMMh   
  `MMMM+ h/ hm`                                   oh .MMMMhsMMMMMMo   
   NMMM+ m` ``                                    /m :MMMMmNMMMMMM:   
   dMMMo.d                                        `M`+MMM+h/ooNMMM.   
   yMMMs:h                                         N`oMMh+sm/y/MMN    
   hMMM/+y                                         N`yMMd+osd.yMMd    
   yMMM/:h                                         N`NMMMNs/:+mMMo    
   yMMMo.d                                        .N NMhhhyyyyodM:    
   yMMMy h.                                       :d-MM:dssNhhyhM-    
   /MMMy s/                                    ``.h//MM-yyyyss-mM.    
   :MMMh .d--:::-...`                      `-::ooom`+MM-hdddhh-NN     
   :MMMm  ys///+/...                        `::. o+ sMm-yyyyyh-Md     
   `MMMN  -d`                                   /s  yMy/yysooo:Mh     
    NMMN   oy++/--.                      .-:::++y`  mMhodhyss/sM+     
    NMMM`:/`   .-:/+oooooo+++/++++//++//+/:.     ://MMysddhyy:mM/     
    dMMMdo////+++/+ooooooosssysyyyyyyyhyhhdddhhhyhhMMMmyhyhys/NM`     
    +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd      
    :NddyhmsyyMyooooosssssooossssossooossyyyysssssysyhNdhhMdhdh/      
         `d/-sy                                       ss.:m`          
           -::                                         .+/`           
    "
    sleep (0.09)
    system 'clear'
end

def self.frame_4
puts "                                                   `.--::-            
             hho:`   ::                     `oo.  -hMms/:`            
         :/oymm`-:.`dd+`                    -/ss -::-:`               
             `.  ``  `myd-               `omyo   `- -+.               
            `/sso+-   :NMMs`  `--::-.  `oNMd-     -shMys+-            
             :hdo      .hMMdhhso++/+ohdNMh:          ::  `            
          `+o+-          dmhhhhysoo.  `omo                            
       ``..--:::/++++++ooNmMy//////:::--:Ny                           
 .dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNmmmmmddddddddhyssso+/. 
 :MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy 
 :MMMMMNyssssoooooo//////////:----.`...-..-:://++o+shMMMMh+MMMhsmMMMy 
 .MMMMM.//`     `-+ooso+/++///++/+oss+oooo/-`      ::.MMMmdMNNhsNMMM/ 
  MMMMM` `/+.+o/:-`.:+syhdmmmmmddhs:      .:osso:::` -MMMdo+. yMMMMM. 
  NMMMM`   os` -ohNMMMMMMMMMMMNMNmd+      : `:.`+s   `MMd:N: /.mMMMh  
  mMMMM.  h/ /mMMmso/-. ```.```              `://+o  `MMd:/ `y.+MMMy  
  dMMMM. +s oMMh-                             `.-`o: -MMMh.``-oNMMM/  
  yMMMM/ N``MMs                                    h .MMMMmhmMMMMMN`  
  oMMMM/-m  ::                                     +:/MMMMMMMMMMMMs   
  /MMMM/:h`hd.                              .-.`   -o+MMMyy+osdMMM/   
  .MMMM+/s .-        --`     .odmmmy/     -mhosdd: :/oMMyo/NoN-MMM.   
  `MMMMo:h -sdmy+. :dNhNy/  `mN-  `/hNo. -Ny    .hho/oMM+sh/N:`NMd    
   NMMM+.myy+` -smmMy` `+hNydM/      .smmNd`      /d/yMMNo/`..mMMo    
   dMMM/ m        .       .+o:          ..         s:hMhyso/:osNM-    
   dMMM+ y.                                        d`NMooo+dhmhhM.    
   sMMMo o:                                       `d-MM+hhdhhh+mm     
   :MMMy `h:---:--..                        . -/+sd/:MN/hddmmd-Ms     
   /MMMh  :y//:-`````                       ``.--ys sMmoyyyhmd:M+     
   :MMMh   s-                                  .s- `NMhsyssyhd+M-     
   `MMMy  `/oy+/+::.`              ```..:/+o+++/:. /MMhhhhyyy+yM`     
    NMMN ::      `.-/+oooo+o+oosssssooo::-.      :/sMMsddhdddodN      
    ++ooyhhhhhyddmdssssssodmsmmmhoo++/++////+oso/++++++++ooo+++o
    +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd      
    :NddyhmsyyMyooooosssssooossssossooossyyyysssssysyhNdhhMdhdh/ 
              ho.yh                     :N:oN-                        
               /+/                       .:-`                         
"
sleep (0.09)
system 'clear'
end

def self.frame_5
puts "                                                                      
                    .+s                     .yy+                      
                   .Nd/.                  `:/sy+                      
                      ods:              `+Nyhs                        
                      .mm+o   `-::++:. -mMMNy`                        
                       `yMohyhyso+//+hmMMNd-                          
                        `hm++ssos+`   `/NN                            
   .:/+++ooosoosooossssymNyNmyssosoo++++yM/--````                     
 +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNmmmmddhysoso+++-  
 /MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd  
 /MMMMMNdddhhhhhhyyysssoossyyysoo+///:--:--:+o+++++++ymMMy:NMMysdMMy  
 /MMMMM/o/      ./oo+++o++ooossyooosssyss/:.       -/`hMMNmMmNysmMMy  
 :MMMMM` -o+`+so/-./shdMMMMMMMMMMMd/    `.:+oshs-//`  NMMmo/` hMMMMs  
 `MMMMM:   /s.`+hNMMMMNmNmmmMMMMNmd+`    -::--..y/   `MMd/m. s.dMMM/  
  mMMMM:  /: /MMMho:.`       ``              `-.-o/  .MMd:- sN`oMMM.  
  hMMMM: .s -MMh.                            `.` -y` /MMMh.`..oMMMN   
  yMMMM: y` om+                                   :/ +MMMMmymMMMMMd   
  oMMMM:.s .o.                                    :+ oMMMMMMMMMMMMs   
  +MMMM/// +m-                                    `y oMMMoy+oomMMM-   
  -MMMMso:                                         d sMMm+sN/N:MMM`   
  -MMMMo+/     `....```.`.`.` od                  `d hMMyodsm::MMN    
   NMMMs:s      ...---::-:::::Nd+/+////::::::-    .h hMMMh/.:-MMM+    
   dMMMs h                                        /o dMossys+symM-    
   yMMMs y`                                       o/ mM-o:odhshoN     
   oMMMh :/                                       h.`Mm-hyhhyh+hd     
   oMMMd  y/: `.----.                            .h `Md:soooos:No     
   +MMMm  -s::+o+.``                            `h: :Mh:so++oo-M:     
   -MMMM.  +:                                `/yd:  /Mooyssooo:M`     
    NMMM.  /osoo/:-.`                   `-:syyos+`  oM/ysoooo+ym      
    dMMM+++`    `-:+oosossossssysssssyyos+:.    `/+`sM-hysssy/Ns      
    yMMMmo/://////////:::://////++ososoosyyssssso+odmMsysysysoM:      
    /MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.      
    `yyhyyNyyhNyssosysssyysyyyyyyyysssyyyyyyyyyyyhyyhhNddmNmmmd  
                 ho.yh                     :N:oN-                        
                 /+/                       .:-`  "
    sleep (0.09)
    system 'clear'
end


def self.animation
    5.times do
      Logo.frame_0
      Logo.frame_1
      Logo.frame_2
      Logo.frame_3
      Logo.frame_4
      Logo.frame_5
    end
  end

def self.go
    system 'clear'
    self.animation
end
end

