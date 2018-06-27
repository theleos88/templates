reset
set term post color eps enh  "Times-Roman" 25

#################################################

# Modify output file here
set output "my.eps"

# Title of the plot
set title "title"

# Legend position
set key left bottom Left title 'Legend' box 3

# Modify ranges here
#set xrange [0:10]
#set yrange [1:1000000]

# Modify tics here
set xtics 1

# Logscales
set logscale y

# Format of axis
#set format y "10^%T"

# Sizes here
#set pointsize 1.8
#set boxwidth 1.8

# Style here
#set style fill solid 1.0 border rgb 'grey'
#set style line 1 lc rgb 'red' lt 1 lw 6
#set style line 2 lc rgb 'gray40' lt 1 lw 2
#set style line 3 lc rgb 'gray70' lt 1 lw 2

# Grid
set grid y
set grid x

# Labels
set xlabel "Number of x"
set ylabel "Number of y"

#################################################

# Plot
# plot "file.dat" u 2:1 w boxes title "Temp title"

# Transform the eps in a pdf file
!epstopdf --outfile=my.pdf my.eps
