set terminal pdf
filename="forwarding_rate"
set output "forwarding_rate".".pdf"

set boxwidth 0.9 relative
set key below
set style histogram cluster gap 1
set style  fill transparent solid 0.5 border -1
set datafile missing '-'
set style data histograms

set title "Forwarding rate for different experiments"

set yrange [0:17]
set xtics offset -3,0 rotate by -30
#set xtics rotate -45
#set xtics offset 0,-2

set label "XC conservative baseline"  at -0.7,12.5 
set label "Line rate"  at -0.7,15.5 
set label "IP conservative baseline"  at -0.7,8.5 

set label "N.A." at 1.2,4 rotate by 45

set ylabel "Rate [Mpps]"


plot filename.".DATA" u 2:xtic(1) w hist ti col lt 1,\
"" u 3:xtic(1) w hist ti col lt 2,\
"" u 4:xtic(1) w hist ti col lt 3,\
14.88 w l notitle,\
12.02 w d dt 1 lc -1 notitle,\
9.22 w d dt 2 lc -1 notitle
#"" u 5:xtic(1) w hist ti col lt 4,\
#"" u 6:xtic(1) w hist ti col lt 5,\

