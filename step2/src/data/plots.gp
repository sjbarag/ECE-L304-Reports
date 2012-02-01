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

set grid
unset key

set xlabel 'Input Voltage, $V_\text{in}$ (\si{\volt})'
set ylabel 'Output Value (Decimal)'
set title 'DC Voltage Sweep Results'

set output "../img/plot/dc_sweep.tex"
plot "sweep_data.txt" using 1:2 with steps lw 2
