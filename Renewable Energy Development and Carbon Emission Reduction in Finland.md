Ningyi Peng
#### **Motivation**

As a graduate student, one of the very first things I did after arriving in Finland was to sign the electricity contract for the rented student apartment. In reviewing various electricity contracts, I noticed that the energy source—such as hydro, wind, or coal—was specified. Typically, contracts featuring sustainable energy sources were priced higher. This observation sparked my curiosity about the real economic impact of different energy types and their broader implications for both individuals and society. To gain a deeper understanding, I have decided to analyze Finland’s progress in renewable energy development and its impact on carbon emission reduction. This investigation will provide insights into the economic and environmental consequences of energy choices, benefiting both individual decision-making and broader societal understanding.

#### **Approach**

1. **Data Processing and Analysis**:
   - Data Cleaning and Preprocessing
   - Python and Tableau.
   - Time series and regression analysis.
2. **Visualization Design**:
   - Trend Analysis
   - World map

 **(Probably as a bonus) How to select your electricity contract**:
   - **Data Crawling**: Crawl down all types of electricity contracts in Finland. Also, analyze and combine the data pieces together as a whole.
   - **Data Visualization**: Develop visualizations to illustrate how different types of contracts—particularly those involving renewable energy—affect pricing and highlight the trade-offs between cost and sustainability.

#### **Theme**

- **Sustainability and Energy Choices**: The main theme is understanding how renewable energy adoption affects economic and environmental outcomes.
- **Cost vs. Sustainability**: Explore the trade-offs between higher costs for renewable energy and the long-term environmental benefits.
- **Climate Change and Sustainable energy**: Climate change raises people's concerns about consuming more sustainable energy, while the use of sustainable energy relieves stress on climate change.
#### **Tools**

- **Tableau** or **PowerBI** for visualization.
- **Pandas** and **Matplotlib** in Python for data processing.
- **GitHub** for version control and project sharing.

#### **Data**

The data sources for this project are selected to ensure coverage of different aspects of Finland’s renewable energy development, climate change, and related global comparisons. Additionally, for individuals and families, the data also includes energy choices, energy costs, and customer preferences as well. 
Below is an analysis of the data’s completeness, currency, and reliability:

The data supporting this project is comprehensive in many key areas:
- [Climate Emotions & Energy](https://osf.io/rfb75/?view_only=cea06f46519a406cbca58374e0572dc4) - Climate concerns and worries correlate more with renewable support than fossil fuel opposition. Here are two papers about this data.
	- “Do climate concerns and worries predict energy preferences? A meta-analysis”
	- “Renewable or nuclear? What your energy preference says about you”
- sustainable energy change - How utilizing sustainable energy would affect climate change
	- [energy&climate](https://cds.climate.copernicus.eu/cdsapp#!/software/app-energy-explorer-europe?tab=overview)
- energy choices - how major countries consume energy.
	- [world energy consumption](https://climatedata.imf.org/datasets/0bfab7fb7e0e4050b82bba40cd7a1bd5/explore)
- cost & sustainble energy
	- [economy&sustainalbe energy](https://www.kaggle.com/datasets/anshtanwar/global-data-on-sustainable-energy)
	- [economy&sustainable energy](https://databank.worldbank.org/source/sustainable-energy-for-all/preview/on)
	- ["New markets for local, renewable, or affordable energy? A segmentation analysis to identify consumer preferences for decentralized energy markets" - Household](https://osf.io/f9w86?view_only=f230333ea1664f89a9ae8fa8deb5747c)
	- "Willingness to pay for renewables: Insights from a meta-analysis of choice experiments"

Despite the richness of these datasets, one potential challenge is ensuring uniform granularity across all sources. Some datasets provide detailed country-level data, while others focus on regional or global trends. 

#### **Time**

Most of the data used in this project is updated annually or more frequently, ensuring relatively current insights. For example, the Energy & Climate Explorer from Copernicus offers recent data on energy usage and climate impacts across Europe. The IMF’s World Energy Consumption dataset and World Bank Data also offer up-to-date insights, generally from the last couple of years, though there may be a lag of 1-2 years in some global comparisons.

So, In the visualization, the linear timeline will serve as the primary framework, showing major events, and shifts in energy consumption over the years. By marking specific dates and periods when renewable energy policies were introduced, we can illustrate their direct impact on renewable energy adoption and climate change. This timeline will visually map out the connection between trends in energy use and climate metrics. Users can easily see how renewable energy consumption has increased and carbon emissions have decreased over time, emphasizing the cumulative effects of sustained policy efforts.

In addition to the linear timeline, a circular timeline will be used to highlight seasonal patterns in renewable energy usage, specifically within household energy consumption. By cycling through months within each year, this circular timeline will make it easy to spot recurring patterns and changes in seasonal energy use, offering insights into how households adapt their energy sources across different times of the year. This will be particularly helpful for users who want to understand fluctuations in renewable energy supply and demand on a seasonal basis.


#### **Information Usability**

We believe policymakers will gain insights into how renewable energy has contributed to mitigating climate change when utilizing the visualization to investigate the relationship between sustainable energy and climate change. We will know when we see the data showing the relationship between sustainable energy and climate change.

We believe individuals and families will learn the connection between household energy cost and energy consumption when using the visualization to see the dashboard providing information between household energy cost and energy type. We will know when we see the comparison of household energy costs, energy choices, and customer preferences.

#### **User Interactions**

The estimated time for interacting with this visualization project is around 3 to 5 minutes, depending on how much information the user wishes to extract. The visualization consists of two dashboards and a world map.

The first dashboard presents the relationship between sustainable energy and climate change, while the world map provides supplementary information for policymakers, allowing them to investigate this relationship across various countries. The second dashboard focuses on household energy costs, energy choices, and consumer preferences. The project is designed to provide a comprehensive yet efficient user experience, helping users quickly explore these important relationships.

#### **Expected Results**

- **Insights**: The analysis and visualization are expected to clearly demonstrate Finland’s advancements in renewable energy and its specific effects on carbon emissions reduction. 
- **Comparative Analysis**: By comparing Finland with other European countries, the project will reveal Finland’s relative strengths and weaknesses in renewable energy development. This comparative approach will offer empirical evidence for other countries to formulate effective policies and foster international collaboration.
- **Electricity Contract Recommendations**: The findings will offer insights into how different types of electricity contracts affect pricing and sustainability, providing practical guidance for individuals in selecting energy sources. 
