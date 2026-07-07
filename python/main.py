import plotly.express as px
import pandas as pd

df = pd.read_csv("locations.csv")


def mymap(df, color=False):
    fig = px.scatter_map(
        df,
        lat="lat",
        lon="lon",
        hover_name="id",
        color="con" if color else None,
        color_continuous_scale="Viridis" if color else None,
        opacity=0.9,
        size=[20]*len(df),
        zoom=11.3,
        height=1000,
        width=1000,
        center={
            'lat': 37.97670606189941, 
            'lon': 23.726178063333588,
        },
        map_style="open-street-map"
    )

    fig.update_layout(margin={"r":0,"t":0,"l":0,"b":0})
    return fig


fig1 = mymap(df)
fig1.write_html("map1.html")

fig2 = mymap(df, color=True)
fig2.write_html("map2.html")
