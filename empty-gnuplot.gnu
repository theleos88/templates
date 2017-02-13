reset
set term post color eps enh  "Times-Roman" 25

# Modify Title here
set output "table1M.eps"

# Modify ranges here
set xrange [0:10]
set yrange [1:1000000]

# Modify tics here
set xtics 1

# Logscales
set logscale y


# Grid
set grid y
set grid x

# Labels
set xlabel "Number of x"
set ylabel "Number of y"


# plot "file.dat" u 2:1 w boxes title "Temp title"
