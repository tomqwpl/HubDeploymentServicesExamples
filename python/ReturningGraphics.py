from matplotlib.figure import Figure
from matplotlib.backends.backend_agg import FigureCanvasAgg

fig = Figure()
canvas = FigureCanvasAgg(fig)
ax = fig.subplots()
ax.plot([1, 2])
fig.savefig(Webout, format="png")