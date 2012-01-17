# Gnuplot plot-generating script for ECE-L304 Step 1
# Note that this script requires the LUA Gnuplot terminal, which is not
# distributed in all packages, and the gnuplot-lua-tikz LaTeX package to
# process it.  This can be found here:
#
# http://www.sfr-fresh.com/unix/misc/gnuplot-4.4.2.tar.gz:t/gnuplot-4.4.2/share/LaTeX/gnuplot-lua-tikz.sty
#
# Execute this script with $gnuplot plots.gp
#
# Author: Sean Barag <sjb89@drexel.edu>


set terminal tikz color solid size 4.25in,2.25in

unset key
set xrange [0:30]
set yrange [0:-16]
unset yrange

set xlabel 'Time, $t$ (\si{\micro\second})'
set ylabel 'Output Voltage, $V_\text{out}$ (\si{\volt})'
set title 'DAC Output Prediction'

set output "../img/plot/prediction.tex"
plot -(int(x) % 15) with steps
