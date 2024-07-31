{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "5051d770",
   "metadata": {
    "papermill": {
     "duration": 0.00628,
     "end_time": "2024-07-31T06:35:33.521816",
     "exception": false,
     "start_time": "2024-07-31T06:35:33.515536",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Author\n",
    "Hi, my name is S M Maisoon Ul Amin. \n",
    "\n",
    "This is the notebook for analysing SMAIR data using R. I am using Kaggle (https://www.kaggle.com/maisoonamin) as my notebook. \n",
    "\n",
    "\n",
    "- [GitHub@maisoonaminongithub](https://github.com/maisoonaminongithub) \n",
    "- [LinkedIn@maisoonamin](https://www.linkedin.com/in/maisoonamin/)\n",
    "- [smmaisoonulamin@trentu.ca](mailto:smmaisoonulamin@trentu.ca)\n",
    "\n",
    "---------------------------------------------------------"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d087cade",
   "metadata": {
    "papermill": {
     "duration": 0.005618,
     "end_time": "2024-07-31T06:35:33.533326",
     "exception": false,
     "start_time": "2024-07-31T06:35:33.527708",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Peterborough\n",
    "\n",
    "Welcome to Peterborough, Ontario—a city where history, nature, and modernity blend seamlessly. Nestled on the banks of the Otonabee River, Peterborough is a gateway to the stunning Kawarthas region, renowned for its picturesque lakes and rolling hills. But Peterborough isn't just about natural beauty; it's a city with a vibrant cultural scene, a rich industrial heritage, and a burgeoning tech sector. From its charming downtown core, filled with quaint shops and cafes, to its thriving arts community, Peterborough is a place where you can feel both the pulse of innovation and the echoes of the past. Let's dive into what makes this city so unique and why it's capturing the hearts of those who discover it.\n",
    "\n",
    "Peterborough is a city with a strong sense of community, where people are known for their friendliness and resilience. The population, hovering around 85,000, is a mix of long-time residents and newcomers who are drawn to the city’s unique charm and opportunities. This diverse demographic includes young families, professionals, retirees, and a significant student population attending Trent University and Fleming College. This blend of people contributes to a dynamic and inclusive atmosphere, where collaboration and community spirit thrive.\n",
    "\n",
    "In Peterborough, you’ll find a community that values both tradition and progress. The people here are proud of their heritage, which is celebrated through numerous cultural festivals, historical sites, and local museums. At the same time, there is a forward-thinking mindset, evident in the city’s support for sustainable initiatives, innovation hubs, and start-up incubators.\n",
    "\n",
    "Whether it's through volunteering, participating in local events, or engaging in the vibrant arts scene, Peterborough residents are deeply connected to their city and to each other. This civic engagement is one of the city’s greatest strengths, driving a collective effort to make Peterborough not just a place to live, but a place to thrive."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f0f4e9f9",
   "metadata": {
    "papermill": {
     "duration": 0.005599,
     "end_time": "2024-07-31T06:35:33.544594",
     "exception": false,
     "start_time": "2024-07-31T06:35:33.538995",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "\n",
    "# Funding Distribution for the City of Peterborough (PET) according to SMAIR Report\n",
    "\n",
    "\n",
    "The City of Peterborough’s funding distribution, as detailed in the Service Manager Annual Information Report (SMAIR), outlines how financial resources are allocated to meet various municipal needs and commitments. This report is crucial for understanding how the city manages its budget to provide essential services and support community development.\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "a3776f5b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-31T06:35:33.563966Z",
     "iopub.status.busy": "2024-07-31T06:35:33.561135Z",
     "iopub.status.idle": "2024-07-31T06:37:28.964292Z",
     "shell.execute_reply": "2024-07-31T06:37:28.960469Z"
    },
    "papermill": {
     "duration": 115.43621,
     "end_time": "2024-07-31T06:37:28.986494",
     "exception": false,
     "start_time": "2024-07-31T06:35:33.550284",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘dplyr’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    filter, lag\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    intersect, setdiff, setequal, union\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Year</th><th scope=col>SMsymbol</th><th scope=col>Program</th><th scope=col>OneTime</th><th scope=col>Ongoing</th><th scope=col>Target</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2019</td><td>PEE</td><td>01Public Housing</td><td>25405.35</td><td>2383250.6</td><td>1995789.6</td></tr>\n",
       "\t<tr><td>2020</td><td>ALG</td><td>01Public Housing</td><td>      NA</td><td>1599010.0</td><td>1300528.1</td></tr>\n",
       "\t<tr><td>2020</td><td>ALG</td><td>02RS            </td><td>      NA</td><td> 481915.0</td><td> 471438.6</td></tr>\n",
       "\t<tr><td>2020</td><td>ALG</td><td>03LD            </td><td>      NA</td><td>       NA</td><td>      0.0</td></tr>\n",
       "\t<tr><td>2020</td><td>BRA</td><td>01Public Housing</td><td>      NA</td><td>1728655.1</td><td>1539290.5</td></tr>\n",
       "\t<tr><td>2020</td><td>BRA</td><td>02RS            </td><td>      NA</td><td> 841783.8</td><td> 837158.7</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 6\n",
       "\\begin{tabular}{llllll}\n",
       " Year & SMsymbol & Program & OneTime & Ongoing & Target\\\\\n",
       " <dbl> & <chr> & <chr> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 2019 & PEE & 01Public Housing & 25405.35 & 2383250.6 & 1995789.6\\\\\n",
       "\t 2020 & ALG & 01Public Housing &       NA & 1599010.0 & 1300528.1\\\\\n",
       "\t 2020 & ALG & 02RS             &       NA &  481915.0 &  471438.6\\\\\n",
       "\t 2020 & ALG & 03LD             &       NA &        NA &       0.0\\\\\n",
       "\t 2020 & BRA & 01Public Housing &       NA & 1728655.1 & 1539290.5\\\\\n",
       "\t 2020 & BRA & 02RS             &       NA &  841783.8 &  837158.7\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 6\n",
       "\n",
       "| Year &lt;dbl&gt; | SMsymbol &lt;chr&gt; | Program &lt;chr&gt; | OneTime &lt;dbl&gt; | Ongoing &lt;dbl&gt; | Target &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| 2019 | PEE | 01Public Housing | 25405.35 | 2383250.6 | 1995789.6 |\n",
       "| 2020 | ALG | 01Public Housing |       NA | 1599010.0 | 1300528.1 |\n",
       "| 2020 | ALG | 02RS             |       NA |  481915.0 |  471438.6 |\n",
       "| 2020 | ALG | 03LD             |       NA |        NA |       0.0 |\n",
       "| 2020 | BRA | 01Public Housing |       NA | 1728655.1 | 1539290.5 |\n",
       "| 2020 | BRA | 02RS             |       NA |  841783.8 |  837158.7 |\n",
       "\n"
      ],
      "text/plain": [
       "  Year SMsymbol Program          OneTime  Ongoing   Target   \n",
       "1 2019 PEE      01Public Housing 25405.35 2383250.6 1995789.6\n",
       "2 2020 ALG      01Public Housing       NA 1599010.0 1300528.1\n",
       "3 2020 ALG      02RS                   NA  481915.0  471438.6\n",
       "4 2020 ALG      03LD                   NA        NA       0.0\n",
       "5 2020 BRA      01Public Housing       NA 1728655.1 1539290.5\n",
       "6 2020 BRA      02RS                   NA  841783.8  837158.7"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Install and load the necessary libraries\n",
    "install.packages(\"readxl\")\n",
    "library(readxl)\n",
    "install.packages(\"dplyr\")\n",
    "library(dplyr)\n",
    "install.packages(\"ggplot2\")\n",
    "library(ggplot2)\n",
    "install.packages(\"tidyr\")\n",
    "library(tidyr)\n",
    "\n",
    "# Define the file path\n",
    "file_path <- \"/kaggle/input/data-updated-new/data_updated30Jul.xlsx\"\n",
    "\n",
    "# Read the \"Financial\" sheet into a dataframe\n",
    "financial_data <- read_excel(file_path, sheet = \"Financial\")\n",
    "\n",
    "# Display the first few rows of the dataframe\n",
    "head(financial_data)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6794daf3",
   "metadata": {
    "papermill": {
     "duration": 0.007396,
     "end_time": "2024-07-31T06:37:29.006135",
     "exception": false,
     "start_time": "2024-07-31T06:37:28.998739",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Year: This column represents the year for which the financial data is recorded. It indicates the fiscal year the data pertains to.\n",
    "\n",
    "SMsymbol: This column contains the name or symbol of the service manager responsible for the financial data. It identifies the specific regional or municipal authority.\n",
    "\n",
    "Program: This column indicates the type of housing program or related financial category. Examples include \"01Public Housing\" and \"02RS.\"\n",
    "\n",
    "OneTime: This column shows one-time financial allocations or expenditures for the specific program and year. These are typically non-recurring expenses.\n",
    "\n",
    "Ongoing: This column records ongoing financial allocations or expenditures. These are recurring expenses that occur regularly.\n",
    "\n",
    "Target: This column lists the financial targets or goals for the respective program and year. It represents the planned or intended financial outcomes."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "97793ae3",
   "metadata": {
    "papermill": {
     "duration": 0.007021,
     "end_time": "2024-07-31T06:37:29.020415",
     "exception": false,
     "start_time": "2024-07-31T06:37:29.013394",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Trend analysis for Rent Suppliment (02RS) by Service Manager of Peterborough\n",
    "\n",
    "\n",
    "The Rent Supplement (02RS) program in Peterborough is a crucial component of the city's housing strategy, aimed at providing affordable rental housing options for low-income households. This program involves partnerships between the municipal government, private landlords, and non-profit housing providers, where rent supplements are provided to eligible tenants, covering the gap between the market rent and what the tenant can afford to pay."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "32c261b6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-31T06:37:29.073307Z",
     "iopub.status.busy": "2024-07-31T06:37:29.037667Z",
     "iopub.status.idle": "2024-07-31T06:37:30.011550Z",
     "shell.execute_reply": "2024-07-31T06:37:30.008472Z"
    },
    "papermill": {
     "duration": 0.987473,
     "end_time": "2024-07-31T06:37:30.015303",
     "exception": false,
     "start_time": "2024-07-31T06:37:29.027830",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 13 × 4\u001b[39m\n",
      "    Year Total_OneTime Total_Ongoing Total_Target\n",
      "   \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m         \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m         \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m        \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m 1\u001b[39m  \u001b[4m2\u001b[24m010             0       1\u001b[4m2\u001b[24m\u001b[4m0\u001b[24m\u001b[4m1\u001b[24m358     1\u001b[4m2\u001b[24m\u001b[4m0\u001b[24m\u001b[4m1\u001b[24m358 \n",
      "\u001b[90m 2\u001b[39m  \u001b[4m2\u001b[24m011             0       1\u001b[4m2\u001b[24m\u001b[4m0\u001b[24m\u001b[4m2\u001b[24m277     1\u001b[4m2\u001b[24m\u001b[4m0\u001b[24m\u001b[4m2\u001b[24m277 \n",
      "\u001b[90m 3\u001b[39m  \u001b[4m2\u001b[24m012             0       1\u001b[4m1\u001b[24m\u001b[4m1\u001b[24m\u001b[4m1\u001b[24m823     1\u001b[4m1\u001b[24m\u001b[4m1\u001b[24m\u001b[4m1\u001b[24m823 \n",
      "\u001b[90m 4\u001b[39m  \u001b[4m2\u001b[24m013             0       1\u001b[4m0\u001b[24m\u001b[4m7\u001b[24m\u001b[4m1\u001b[24m759     1\u001b[4m0\u001b[24m\u001b[4m7\u001b[24m\u001b[4m1\u001b[24m759 \n",
      "\u001b[90m 5\u001b[39m  \u001b[4m2\u001b[24m014             0       1\u001b[4m0\u001b[24m\u001b[4m6\u001b[24m\u001b[4m9\u001b[24m576     1\u001b[4m0\u001b[24m\u001b[4m6\u001b[24m\u001b[4m9\u001b[24m576 \n",
      "\u001b[90m 6\u001b[39m  \u001b[4m2\u001b[24m015             0       1\u001b[4m0\u001b[24m\u001b[4m9\u001b[24m\u001b[4m0\u001b[24m633     1\u001b[4m0\u001b[24m\u001b[4m9\u001b[24m\u001b[4m0\u001b[24m633 \n",
      "\u001b[90m 7\u001b[39m  \u001b[4m2\u001b[24m016             0       1\u001b[4m0\u001b[24m\u001b[4m9\u001b[24m\u001b[4m8\u001b[24m600     1\u001b[4m0\u001b[24m\u001b[4m9\u001b[24m\u001b[4m8\u001b[24m600 \n",
      "\u001b[90m 8\u001b[39m  \u001b[4m2\u001b[24m017             0       1\u001b[4m1\u001b[24m\u001b[4m4\u001b[24m\u001b[4m2\u001b[24m328     1\u001b[4m1\u001b[24m\u001b[4m4\u001b[24m\u001b[4m2\u001b[24m328 \n",
      "\u001b[90m 9\u001b[39m  \u001b[4m2\u001b[24m018             0       1\u001b[4m1\u001b[24m\u001b[4m8\u001b[24m\u001b[4m5\u001b[24m434     1\u001b[4m1\u001b[24m\u001b[4m8\u001b[24m\u001b[4m5\u001b[24m434 \n",
      "\u001b[90m10\u001b[39m  \u001b[4m2\u001b[24m019             0       1\u001b[4m1\u001b[24m\u001b[4m9\u001b[24m\u001b[4m0\u001b[24m937     1\u001b[4m1\u001b[24m\u001b[4m9\u001b[24m\u001b[4m0\u001b[24m937 \n",
      "\u001b[90m11\u001b[39m  \u001b[4m2\u001b[24m020             0       1\u001b[4m2\u001b[24m\u001b[4m0\u001b[24m\u001b[4m8\u001b[24m700     1\u001b[4m1\u001b[24m\u001b[4m8\u001b[24m\u001b[4m0\u001b[24m426.\n",
      "\u001b[90m12\u001b[39m  \u001b[4m2\u001b[24m021             0       1\u001b[4m2\u001b[24m\u001b[4m0\u001b[24m\u001b[4m4\u001b[24m971     1\u001b[4m1\u001b[24m\u001b[4m6\u001b[24m\u001b[4m3\u001b[24m658.\n",
      "\u001b[90m13\u001b[39m  \u001b[4m2\u001b[24m022             0        \u001b[4m9\u001b[24m\u001b[4m2\u001b[24m\u001b[4m3\u001b[24m784      \u001b[4m8\u001b[24m\u001b[4m9\u001b[24m\u001b[4m9\u001b[24m313.\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nAP5c3TGZ5ppEI4Dn9rt77ew78AEAjalowJcwGP3Miu2GhmIJIWRk0FDs8GPUd+XaxNCBReu6\nrUwm3VSYlZSUtLgl0PuGPZhTb4tVs+17/vT14Zu0bv3bD85g/9tW/+ePQUm2jLtjlrn7fUI1\nltm3pJoAPPpS5SArASCLzo8P+FTatKcvm9a13bWzov8Nw6OxQeePD/7vjvXuUOKc58cevPWn\n78B7OTk5k2f9obMzpx9z+i/+9HxOjCzLX7d1P1BH2r8vnC7rqgSD4N9919qmru2Cf+cfNjkY\nVvPH3AGGX7s56YEZAH6844uujc0b7zwQEm1Zi9K0HICtT539bmX72DOeKvv4oXG6o7/5aYyK\nBVAb6Fgx7pcLUgE8fvUrvQ7OVrz5HADbhOuP+ukIIYREMgp2I+Gqt64H8NT80z5a3xBukUX3\nP24/9aWyqqDl4vMOH63rB6cd+85l2bLov3j2VWv2e8ONbduXnXfywwNu++Z9GwEU3n9Nr9+9\n9o4CADteemSQlQBgOHOGjhNDtW9ua+ts/OnfT8+/4AsAor+/m1Vc9NcZAB654GUAP3v29M52\nXczp7dV7y9c/f//iQxfqObZ98ee9ToZRXZXQ/TrCI+3fj/ueOwfAiwvOW7q943I6wVt1z9kn\n7w8KY898dYa5v3mpPaWe+fY0s6Zx1W8fWrYv3MK7t1177lsArnnnunDLXY9vAvD8+zce45tQ\nwwJAU1tHsi959s1svarumzsnXXTXjzsOLeMs+Jr+8+JtJy36iWG4Re9efGzPSQghJFIpfcow\nWh3BUKwsy7L82Z2nhQ94+uQZp548J8uuA6C1Fi9tPDS+NpgBUCGw7+IJNgAMw6WMLy7MTmQY\nRmub8dzVOeh7UCzo/JFjGIbhVvVxW1h/S8fdIN5p8g6yElmWV99/IgCWM849/ZyLzz+zcHwC\ny5kuu+vu8JG5+obf+USp13vF8t5yHcsA0JiKui1WvObBjpw3JrvwlPmnTp+czTIMgPl3fxXu\n0G0odsD+vertXrHS01dMCh/Y1NwpJ0zPM6lYANbs87b7DlugeDBDsbIsN658zMSxDMNNOfXs\niy9YONagBlD4q7fC3w15ysJl2/tw8aqGrocdfQ/FLjshBcCE677rbGnd+k5+jDa8f0NcQmbO\n+MxxyRqWAcBw+l+9tHYw9Q/GkQ7F9rOO3dSTHu+5FQ3FEkLIkaJgd5SONNjJsrz5vy9ddNqM\n+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\nGtYAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Filter the data for \"02RS\" program and SMsymbol \"PET\"\n",
    "filtered_data <- financial_data %>%\n",
    "  filter(Program == \"02RS\" & SMsymbol == \"PET\")\n",
    "\n",
    "# Create a summary dataframe for trend analysis\n",
    "trend_data <- filtered_data %>%\n",
    "  group_by(Year) %>%\n",
    "  summarize(\n",
    "    Total_OneTime = sum(OneTime, na.rm = TRUE),\n",
    "    Total_Ongoing = sum(Ongoing, na.rm = TRUE),\n",
    "    Total_Target = sum(Target, na.rm = TRUE)\n",
    "  )\n",
    "\n",
    "# Plot the trend analysis\n",
    "ggplot(trend_data, aes(x = Year)) +\n",
    "  geom_line(aes(y = Total_OneTime, color = \"OneTime\")) +\n",
    "  geom_line(aes(y = Total_Ongoing, color = \"Ongoing\")) +\n",
    "  geom_line(aes(y = Total_Target, color = \"Target\")) +\n",
    "  labs(title = \"Trend Analysis for 02RS - PET\",\n",
    "       x = \"Year\",\n",
    "       y = \"Amount\",\n",
    "       color = \"Legend\") +\n",
    "  theme_minimal()\n",
    "\n",
    "# Display the summary dataframe\n",
    "print(trend_data)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "775c8d79",
   "metadata": {
    "papermill": {
     "duration": 0.008592,
     "end_time": "2024-07-31T06:37:30.031909",
     "exception": false,
     "start_time": "2024-07-31T06:37:30.023317",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "\n",
    "1. **Ongoing (Blue Line)**:\n",
    "   - The blue line represents the ongoing financial allocations or expenditures for the \"02RS\" program.\n",
    "   - From around 2010 to 2019, there is a noticeable decline in ongoing expenditures.\n",
    "   - Starting from 2019, there is a slight increase followed by a drop again in 2022.\n",
    "\n",
    "2. **OneTime (Red Line)**:\n",
    "   - The red line represents one-time financial allocations or expenditures.\n",
    "   - It appears to be flat and close to zero across all the years, indicating that there were no significant one-time expenditures recorded for the \"02RS\" program.\n",
    "\n",
    "3. **Target (Green Line)**:\n",
    "   - The green line represents the financial targets set for the \"02RS\" program.\n",
    "   - The trend of the targets closely follows the ongoing expenditures, with some slight variations. \n",
    "   - There is a slight increase in targets around 2020, followed by a decrease aligning with the decline in ongoing expenditures by 2022.\n",
    "\n",
    "### Key Points:\n",
    "\n",
    "- **Overall Decline**: There is a general decline in both ongoing expenditures and targets over the years, with a small peak around 2019-2020 before dropping again.\n",
    "- **Minimal One-Time Expenditures**: One-time expenditures are negligible throughout the period.\n",
    "- **Alignment of Targets and Expenditures**: Financial targets closely match ongoing expenditures, suggesting that the budget planning aligns well with the actual spending for the \"02RS\" program.\n",
    "\n",
    "This indicates that while there were some fluctuations, the financial support for the \"02RS\" program has generally decreased over the years with occasional increases."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "10690055",
   "metadata": {
    "papermill": {
     "duration": 0.008294,
     "end_time": "2024-07-31T06:37:30.049595",
     "exception": false,
     "start_time": "2024-07-31T06:37:30.041301",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Trend Analysis for All Rent Suppliment (02RS) units under Administration by Service Manager in Peterborough (PET)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "30ef7945",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-31T06:37:30.071779Z",
     "iopub.status.busy": "2024-07-31T06:37:30.069972Z",
     "iopub.status.idle": "2024-07-31T06:37:30.276763Z",
     "shell.execute_reply": "2024-07-31T06:37:30.274830Z"
    },
    "papermill": {
     "duration": 0.222558,
     "end_time": "2024-07-31T06:37:30.281804",
     "exception": false,
     "start_time": "2024-07-31T06:37:30.059246",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 5 × 10</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>YEAR</th><th scope=col>SMsymbol</th><th scope=col>Program</th><th scope=col>RGI households with incomes at or below the HILs</th><th scope=col>Total number of non-targeted households (at year end)</th><th scope=col>RGI households with incomes above the HILs</th><th scope=col>Households in market/low-end of market units</th><th scope=col>Vacant units</th><th scope=col>Unit_Total</th><th scope=col>Service Agreements (Part VII.1)</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;lgl&gt;</th><th scope=col>&lt;lgl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;lgl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2019</td><td>OTT</td><td>01Public Housing</td><td>7795</td><td>481</td><td>NA</td><td>NA</td><td>287</td><td>8563</td><td>NA</td></tr>\n",
       "\t<tr><td>2019</td><td>OTT</td><td>02RS            </td><td>2434</td><td> 29</td><td>NA</td><td>NA</td><td> 21</td><td>2484</td><td>NA</td></tr>\n",
       "\t<tr><td>2019</td><td>OTT</td><td>05Section 95 PNP</td><td> 146</td><td>318</td><td>NA</td><td>NA</td><td>  4</td><td> 468</td><td>NA</td></tr>\n",
       "\t<tr><td>2019</td><td>OTT</td><td>06Section 95 MNP</td><td> 816</td><td>246</td><td>NA</td><td>NA</td><td> 12</td><td>1074</td><td>NA</td></tr>\n",
       "\t<tr><td>2020</td><td>HAM</td><td>01Public Housing</td><td>3878</td><td>547</td><td>NA</td><td>NA</td><td>681</td><td>5106</td><td>NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 5 × 10\n",
       "\\begin{tabular}{llllllllll}\n",
       " YEAR & SMsymbol & Program & RGI households with incomes at or below the HILs & Total number of non-targeted households (at year end) & RGI households with incomes above the HILs & Households in market/low-end of market units & Vacant units & Unit\\_Total & Service Agreements (Part VII.1)\\\\\n",
       " <dbl> & <chr> & <chr> & <dbl> & <dbl> & <lgl> & <lgl> & <dbl> & <dbl> & <lgl>\\\\\n",
       "\\hline\n",
       "\t 2019 & OTT & 01Public Housing & 7795 & 481 & NA & NA & 287 & 8563 & NA\\\\\n",
       "\t 2019 & OTT & 02RS             & 2434 &  29 & NA & NA &  21 & 2484 & NA\\\\\n",
       "\t 2019 & OTT & 05Section 95 PNP &  146 & 318 & NA & NA &   4 &  468 & NA\\\\\n",
       "\t 2019 & OTT & 06Section 95 MNP &  816 & 246 & NA & NA &  12 & 1074 & NA\\\\\n",
       "\t 2020 & HAM & 01Public Housing & 3878 & 547 & NA & NA & 681 & 5106 & NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 5 × 10\n",
       "\n",
       "| YEAR &lt;dbl&gt; | SMsymbol &lt;chr&gt; | Program &lt;chr&gt; | RGI households with incomes at or below the HILs &lt;dbl&gt; | Total number of non-targeted households (at year end) &lt;dbl&gt; | RGI households with incomes above the HILs &lt;lgl&gt; | Households in market/low-end of market units &lt;lgl&gt; | Vacant units &lt;dbl&gt; | Unit_Total &lt;dbl&gt; | Service Agreements (Part VII.1) &lt;lgl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|\n",
       "| 2019 | OTT | 01Public Housing | 7795 | 481 | NA | NA | 287 | 8563 | NA |\n",
       "| 2019 | OTT | 02RS             | 2434 |  29 | NA | NA |  21 | 2484 | NA |\n",
       "| 2019 | OTT | 05Section 95 PNP |  146 | 318 | NA | NA |   4 |  468 | NA |\n",
       "| 2019 | OTT | 06Section 95 MNP |  816 | 246 | NA | NA |  12 | 1074 | NA |\n",
       "| 2020 | HAM | 01Public Housing | 3878 | 547 | NA | NA | 681 | 5106 | NA |\n",
       "\n"
      ],
      "text/plain": [
       "  YEAR SMsymbol Program         \n",
       "1 2019 OTT      01Public Housing\n",
       "2 2019 OTT      02RS            \n",
       "3 2019 OTT      05Section 95 PNP\n",
       "4 2019 OTT      06Section 95 MNP\n",
       "5 2020 HAM      01Public Housing\n",
       "  RGI households with incomes at or below the HILs\n",
       "1 7795                                            \n",
       "2 2434                                            \n",
       "3  146                                            \n",
       "4  816                                            \n",
       "5 3878                                            \n",
       "  Total number of non-targeted households (at year end)\n",
       "1 481                                                  \n",
       "2  29                                                  \n",
       "3 318                                                  \n",
       "4 246                                                  \n",
       "5 547                                                  \n",
       "  RGI households with incomes above the HILs\n",
       "1 NA                                        \n",
       "2 NA                                        \n",
       "3 NA                                        \n",
       "4 NA                                        \n",
       "5 NA                                        \n",
       "  Households in market/low-end of market units Vacant units Unit_Total\n",
       "1 NA                                           287          8563      \n",
       "2 NA                                            21          2484      \n",
       "3 NA                                             4           468      \n",
       "4 NA                                            12          1074      \n",
       "5 NA                                           681          5106      \n",
       "  Service Agreements (Part VII.1)\n",
       "1 NA                             \n",
       "2 NA                             \n",
       "3 NA                             \n",
       "4 NA                             \n",
       "5 NA                             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Define the file path\n",
    "file_path <- \"/kaggle/input/data-updated-new/data_updated30Jul.xlsx\"\n",
    "\n",
    "# Read the \"Units\" sheet into a dataframe\n",
    "units_data <- read_excel(file_path, sheet = \"Units\")\n",
    "\n",
    "# Read the \"Units\" sheet into a dataframe\n",
    "units_data <- read_excel(file_path, sheet = \"Units\")\n",
    "\n",
    "# Display the top 5 rows of the dataframe\n",
    "head(units_data, 5)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "87b99c03",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-31T06:37:30.302416Z",
     "iopub.status.busy": "2024-07-31T06:37:30.300635Z",
     "iopub.status.idle": "2024-07-31T06:37:30.346873Z",
     "shell.execute_reply": "2024-07-31T06:37:30.344870Z"
    },
    "papermill": {
     "duration": 0.059609,
     "end_time": "2024-07-31T06:37:30.349786",
     "exception": false,
     "start_time": "2024-07-31T06:37:30.290177",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 5 × 10</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>YEAR</th><th scope=col>SMsymbol</th><th scope=col>Program</th><th scope=col>RGI households with incomes at or below the HILs</th><th scope=col>Total number of non-targeted households (at year end)</th><th scope=col>RGI households with incomes above the HILs</th><th scope=col>Households in market/low-end of market units</th><th scope=col>Vacant units</th><th scope=col>Unit_Total</th><th scope=col>Service Agreements (Part VII.1)</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;lgl&gt;</th><th scope=col>&lt;lgl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;lgl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2016</td><td>PET</td><td>02RS</td><td>169</td><td>4</td><td>NA</td><td>NA</td><td>1</td><td>174</td><td>NA</td></tr>\n",
       "\t<tr><td>2014</td><td>PET</td><td>02RS</td><td>215</td><td>1</td><td>NA</td><td>NA</td><td>1</td><td>217</td><td>NA</td></tr>\n",
       "\t<tr><td>2015</td><td>PET</td><td>02RS</td><td>240</td><td>4</td><td>NA</td><td>NA</td><td>5</td><td>249</td><td>NA</td></tr>\n",
       "\t<tr><td>2010</td><td>PET</td><td>02RS</td><td>239</td><td>3</td><td>NA</td><td>NA</td><td>2</td><td>244</td><td>NA</td></tr>\n",
       "\t<tr><td>2011</td><td>PET</td><td>02RS</td><td>224</td><td>7</td><td>NA</td><td>NA</td><td>4</td><td>235</td><td>NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 5 × 10\n",
       "\\begin{tabular}{llllllllll}\n",
       " YEAR & SMsymbol & Program & RGI households with incomes at or below the HILs & Total number of non-targeted households (at year end) & RGI households with incomes above the HILs & Households in market/low-end of market units & Vacant units & Unit\\_Total & Service Agreements (Part VII.1)\\\\\n",
       " <dbl> & <chr> & <chr> & <dbl> & <dbl> & <lgl> & <lgl> & <dbl> & <dbl> & <lgl>\\\\\n",
       "\\hline\n",
       "\t 2016 & PET & 02RS & 169 & 4 & NA & NA & 1 & 174 & NA\\\\\n",
       "\t 2014 & PET & 02RS & 215 & 1 & NA & NA & 1 & 217 & NA\\\\\n",
       "\t 2015 & PET & 02RS & 240 & 4 & NA & NA & 5 & 249 & NA\\\\\n",
       "\t 2010 & PET & 02RS & 239 & 3 & NA & NA & 2 & 244 & NA\\\\\n",
       "\t 2011 & PET & 02RS & 224 & 7 & NA & NA & 4 & 235 & NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 5 × 10\n",
       "\n",
       "| YEAR &lt;dbl&gt; | SMsymbol &lt;chr&gt; | Program &lt;chr&gt; | RGI households with incomes at or below the HILs &lt;dbl&gt; | Total number of non-targeted households (at year end) &lt;dbl&gt; | RGI households with incomes above the HILs &lt;lgl&gt; | Households in market/low-end of market units &lt;lgl&gt; | Vacant units &lt;dbl&gt; | Unit_Total &lt;dbl&gt; | Service Agreements (Part VII.1) &lt;lgl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|\n",
       "| 2016 | PET | 02RS | 169 | 4 | NA | NA | 1 | 174 | NA |\n",
       "| 2014 | PET | 02RS | 215 | 1 | NA | NA | 1 | 217 | NA |\n",
       "| 2015 | PET | 02RS | 240 | 4 | NA | NA | 5 | 249 | NA |\n",
       "| 2010 | PET | 02RS | 239 | 3 | NA | NA | 2 | 244 | NA |\n",
       "| 2011 | PET | 02RS | 224 | 7 | NA | NA | 4 | 235 | NA |\n",
       "\n"
      ],
      "text/plain": [
       "  YEAR SMsymbol Program RGI households with incomes at or below the HILs\n",
       "1 2016 PET      02RS    169                                             \n",
       "2 2014 PET      02RS    215                                             \n",
       "3 2015 PET      02RS    240                                             \n",
       "4 2010 PET      02RS    239                                             \n",
       "5 2011 PET      02RS    224                                             \n",
       "  Total number of non-targeted households (at year end)\n",
       "1 4                                                    \n",
       "2 1                                                    \n",
       "3 4                                                    \n",
       "4 3                                                    \n",
       "5 7                                                    \n",
       "  RGI households with incomes above the HILs\n",
       "1 NA                                        \n",
       "2 NA                                        \n",
       "3 NA                                        \n",
       "4 NA                                        \n",
       "5 NA                                        \n",
       "  Households in market/low-end of market units Vacant units Unit_Total\n",
       "1 NA                                           1            174       \n",
       "2 NA                                           1            217       \n",
       "3 NA                                           5            249       \n",
       "4 NA                                           2            244       \n",
       "5 NA                                           4            235       \n",
       "  Service Agreements (Part VII.1)\n",
       "1 NA                             \n",
       "2 NA                             \n",
       "3 NA                             \n",
       "4 NA                             \n",
       "5 NA                             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Filter the data for SMsymbol \"PET\" and Program \"02RS\"\n",
    "filtered_units_data <- units_data %>%\n",
    "  filter(SMsymbol == \"PET\" & Program == \"02RS\")\n",
    "\n",
    "# Display the top 5 rows of the filtered dataframe\n",
    "head(filtered_units_data, 5)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "7769d6bd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-31T06:37:30.372390Z",
     "iopub.status.busy": "2024-07-31T06:37:30.370551Z",
     "iopub.status.idle": "2024-07-31T06:37:31.208961Z",
     "shell.execute_reply": "2024-07-31T06:37:31.205830Z"
    },
    "papermill": {
     "duration": 0.857274,
     "end_time": "2024-07-31T06:37:31.215854",
     "exception": false,
     "start_time": "2024-07-31T06:37:30.358580",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Reshape data for plotting\n",
    "data_long <- filtered_units_data %>%\n",
    "  pivot_longer(cols = c(`RGI households with incomes at or below the HILs`, \n",
    "                        `Total number of non-targeted households (at year end)`, \n",
    "                        `Vacant units`, \n",
    "                        `Unit_Total`),\n",
    "               names_to = \"Metric\",\n",
    "               values_to = \"Value\")\n",
    "\n",
    "# Create the line plot\n",
    "ggplot(data_long, aes(x = YEAR, y = Value, color = Metric, group = Metric)) +\n",
    "  geom_line() +\n",
    "  geom_point() +\n",
    "  labs(title = \"Trend Analysis for Program 02RS - PET\",\n",
    "       x = \"Year\",\n",
    "       y = \"Count\",\n",
    "       color = \"Metric\") +\n",
    "  theme_minimal()\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "554bb476",
   "metadata": {
    "papermill": {
     "duration": 0.011121,
     "end_time": "2024-07-31T06:37:31.239145",
     "exception": false,
     "start_time": "2024-07-31T06:37:31.228024",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The plot displays the trends for various metrics related to the \"02RS\" program for the service manager symbol \"PET\" over several years. Here is an interpretation of the data shown in the plot:\n",
    "\n",
    "\n",
    "1. **RGI Households with Incomes at or Below the HILs (Red Line)**:\n",
    "   - From 2010 to 2014, there is a noticeable decline in the number of RGI households with incomes at or below the HILs.\n",
    "   - There is a peak in 2015, after which the numbers start to decline again, with a sharp drop around 2016 and remaining relatively stable but lower than previous years.\n",
    "\n",
    "2. **Total Number of Non-Targeted Households (Green Line)**:\n",
    "   - This metric remains very low throughout the years, with minor fluctuations.\n",
    "   - There are slight peaks around 2015 and 2020, but the overall count stays close to zero.\n",
    "\n",
    "3. **Unit_Total (Blue Line)**:\n",
    "   - The total number of units under administration is relatively high and shows some fluctuations.\n",
    "   - There is a significant drop around 2016, and after a period of relative stability, it declines again around 2022.\n",
    "\n",
    "4. **Vacant Units (Purple Line)**:\n",
    "   - The number of vacant units is consistently low, similar to the non-targeted households, with minor fluctuations.\n",
    "   - There are slight peaks around 2015 and 2020 but generally remain close to zero.\n",
    "\n",
    "### Key Points:\n",
    "- **Significant Drop in RGI Households and Unit Total**:\n",
    "  - The number of RGI households with incomes at or below the HILs and the total number of units saw a significant decline around 2016 and again around 2022.\n",
    "  \n",
    "- **Low and Stable Non-Targeted Households and Vacant Units**:\n",
    "  - Both the total number of non-targeted households and vacant units remain consistently low throughout the period, indicating a stable situation in these areas.\n",
    "\n",
    "- **Fluctuations and Trends**:\n",
    "  - The plot shows some fluctuations over the years, with notable changes around 2015 and 2016, followed by a period of relative stability and another decline around 2022.\n",
    "\n",
    "This analysis indicates that while the overall number of units and RGI households under administration have seen significant changes over the years, the number of non-targeted households and vacant units has remained relatively stable, suggesting targeted management in these areas."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "922bb16b",
   "metadata": {
    "papermill": {
     "duration": 0.010055,
     "end_time": "2024-07-31T06:37:31.259132",
     "exception": false,
     "start_time": "2024-07-31T06:37:31.249077",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# ANOVA test with the data for the total units that recieved the Rent-Geared-to-Income (RGI) for 02RS for PET\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "11cae597",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-31T06:37:31.285440Z",
     "iopub.status.busy": "2024-07-31T06:37:31.282781Z",
     "iopub.status.idle": "2024-07-31T06:37:31.323038Z",
     "shell.execute_reply": "2024-07-31T06:37:31.320994Z"
    },
    "papermill": {
     "duration": 0.05693,
     "end_time": "2024-07-31T06:37:31.326021",
     "exception": false,
     "start_time": "2024-07-31T06:37:31.269091",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "             Df Sum Sq Mean Sq\n",
       "factor(YEAR) 12  14577    1215"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Perform ANOVA on Unit_Total\n",
    "anova_result <- aov(Unit_Total ~ factor(YEAR), data = filtered_units_data)\n",
    "\n",
    "# Summary of the ANOVA test\n",
    "summary(anova_result)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "379fd144",
   "metadata": {
    "papermill": {
     "duration": 0.010866,
     "end_time": "2024-07-31T06:37:31.348219",
     "exception": false,
     "start_time": "2024-07-31T06:37:31.337353",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Factor (YEAR):\n",
    "\n",
    "The degrees of freedom (Df) for factor(YEAR) is 12, indicating 13 years of data.\n",
    "\n",
    "The Sum of Squares (Sum Sq) for factor(YEAR) is 14,577, indicating the total variation in Unit_Total due to the differences between years.\n",
    "\n",
    "The Mean Square (Mean Sq) for factor(YEAR) is 1,215, representing the average variation in Unit_Total due to the differences between years."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "5c176796",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-07-31T06:37:31.373853Z",
     "iopub.status.busy": "2024-07-31T06:37:31.372065Z",
     "iopub.status.idle": "2024-07-31T06:37:31.731041Z",
     "shell.execute_reply": "2024-07-31T06:37:31.729089Z"
    },
    "papermill": {
     "duration": 0.374935,
     "end_time": "2024-07-31T06:37:31.733750",
     "exception": false,
     "start_time": "2024-07-31T06:37:31.358815",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“\u001b[1m\u001b[22mContinuous \u001b[32mx\u001b[39m aesthetic\n",
      "\u001b[36mℹ\u001b[39m did you forget `aes(group = ...)`?”\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nVGpqStM0m81mMt5C1LqmpqZMJuP8tOWNN94IIcyaNevKK6/s6Vl6qebm5hBCNpvt6UF6qebm\n5nw+nyRJUVE3vSxqvZPP5/P5/Pp1fvbcc8+hQ4d26SEymUx5eXlba7v7ZL3xzP1X/HhabtTe\nZ+61STvLmxvfrskWjxg06QfTz61Ol/7l/mk/vO6s0jE3HTa+evV9pmlaX1/f1ZM//fTTv/zl\nL7v6KMD65c0337zxxht7egqgtxgzZsyAAQO69BDZbLZXhF3jwlemXXnFb59bsPN+X7vgy7uU\nLX8kqdXl2ZKht9122/Kblu50wKmv/m7GI9e/eNglk1ffc5Ik3fB/hC0PfWWz2SFDhnT1sQCA\n9Ug+n589e3YIIZPJdHWTtP9ESjeF3dI3Hv72KVdlt9r74usOHTeobI3LVzdxcPlDC95rdVWS\nJP3791/HE6+mpY4HDx581113dfWxAID1yIIFC/bYY48QQlVVVTc0STu649Uzab7ugtOuLt31\nxKvPPmblemtreQhh0atTjzzq+DmN+eUL8o/OrqveYmw3TAsAsJ7qjkfs6uZOf6kud/hWFTOe\neeaDA5ePHjPw160u/8iE6r6jDhhYd9xp51x7wpd3qU7qZzz4y8dq+5x9lLADAGhTd4Td0tdm\nhRB+/oMLVl7Yd9h3Ljmo9eW/nLpDpmjQeVO/9/Nrpl9x/lkN2T6jxmx56mXnTKzyAcUAAG3q\njrDbaPIF97TynocQwg5tLA8hhNL+E44748LjumooAIDY+IQqAIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBIFPX0\nAOtAmqY1NTVdfZRly5Z19SEAgPVafX390qVLu/QQSZJUVVW1tTaGsAshZDJd/tBjkiRdfQgA\nYL2WJElXN0n7+48h7JIkqays7OqjlJSUdPUhAID1WllZWTc0STu8xg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBJF\n7awbM2ZMgXuZOXPmuhgGAIDOay/sRowY0V1jAACwttoLuwcffHCNt0/zdUtr1904AAB01tq+\nxu6thz4/cIPN18koAACsjfYesVtZ2lxz1UlH3/jwM/Prm1ZePuc/byTlW3TBYAAAdEyhj9g9\nd+6nTrzqliXVI8cOaZo1a9b4rT+yzdbji+bPTgZ8+uq7f9elIwIAUIhCH7H7zpX/GLjl+a8+\neWbaXDOqqv/kq246c1if+rmPbjnyMzUbV3bpiAAAFKLQR+weX9I44sDPhRCSbNUhG1Y88uz8\nEEL5hjvfdNiI8/e7rgsHBACgMIWGXf+iJLc01/Lv7TepfPvut1v+PfwLmyx67bIuGQ0AgI4o\nNOyOGtrntZ9f9Oay5hDCsH2HvnX/T1uWz3n43a4aDQCAjig07I6ddnT9e7/ZbNCm/25o3uzQ\no+rm/mLHw0/94bknf+5HLw6YcFqXjggAQCEKffPEkJ0vfu6OId+79t5MEiqHHHvzSbd/5fJL\nnkrTvpvtefvvju3SEQEAKEShYRdC2ObzJ//m8ye3/PuASx/c++RX/11btsW4TYuTrhkNAICO\n6EDYraLvsLHbrMNBAABYO4W+xm7HHXe85K2a1ZfPefLEnXY5ZJ2OBABAZ6zhEbsl/37tncbm\nEMJTTz016p//fKW274fXpy/e99iTj8/qqukAACjYGsLujr22P+LVBS3//tUe2/2qtW36jjh+\n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\nT/7pjst2eurlmf/+v42KC3x3LQAAXaW9sLvuuuvav/EDlx+458m3TrnsH0+dutU6nQoAgA5b\nq0fa9jjplsM3qvzHj69ZV9MAANBpa/sU6qGTB9fP84ZZAICet7ZhV9yvOM3XrpNRAABYG2sb\ndk8/8V5Jn+3XySgAAKyNtQq7Ja9NP33mwo0+eeK6mgYAgE5r712xt956a5vr0qZ3X5tx1UVX\n5TL9Lv3pLut+LgAAOqi9sDvwwAPbv3FJv3EX/vr3n9+wYp2OBABAZ7QXdtdc0+bnmCRJ8YCN\nN/vUHjsNKvHRxAAAvUJ7YXfsscd22xwAAKwlj7cBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAESiqKcHWDeampq6+hD5\nfL6rDwEArNeam5u7ukmSJMlms22tjSHs8vn8okWLuvooDQ0NXX0IAGC9Vltb29VNks1m+/fv\n39baGMIuk8kMGjSoq49SUVHR1YcAANZrffv27YYmaYfX2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARKKom493\nw9e+WnbuNQduUB5CWPr2j77ytUdX2aCkcpvbbz4vhPDun888+vt/X3nVET+/bcrAsm4bFQBg\n/dKdYZfOfPxnd85etH+atnxdMWCf00/fceUtnpp2xcwJu7f8e9Hzi8oH7vPNoyesWDu8T3G3\nzQoAsN7pprCb++fLT7vyifk1jSsvzJaPnTRp7IovF796y6W1I3/6jZ3ev8lLS6q3mDRp0oQA\nAEABuinsqifsf+a5n8vn3j3ltB+0ukHavPTS793+mTOvG1CUtCx5fsmy/hOrm+uXvLc0P3jD\n6qR7Bl2TuXPn7rvvvj09BQDQi+Tz+Z4e4X3dFHYlfYeO7huaG9t8hdzrd5732sAp39uy/4ol\nz9Xk0ieu+NKVL+fStKhygz2//M1j99m61dumaVpXV7fuh/6wxsbGEEJTU9Ps2bO7+lgAwPqo\noaGhtra2Sw+RyWTKy8vbWtvdb55oVb7xnQtunvn5K767Yklz49s12eIRgyb9YPq51enSv9w/\n7YfXnVU65qbDxlevfvM0Tevr67t6yKampq4+BACwXmtsbOzqJslms7097N68/9Kayp33G1q5\nYkm2ZOhtt922/KvSnQ449dXfzXjk+hcPu2Ty6jdPkiSbzXb1kEnSS54NBgB6qUwm09VNksm0\n91l1vSHs0ht//e9RB5/Y/kYTB5c/tOC9VlclSdK/f/9WV61DLXVcVFS04YYbdvWxAID1SD6f\nnzNnTgihqqqqG5qkHT0fdnVzf/3M0sYffmrIygsXvTr12xe/dMHVV25U0pKl+Udn11VvO7bV\nPXSnDTfc8J577unpKQCAXmTBggV77LFHT08RQm/4yxOz73+ipM/HxpV/KDH7jjpgYN27p51z\n7dMvvjLzH8/fcvmpj9X2Oeaong87AIBeq+cfsXv00Xf7jjxklYWZokHnTf3ez6+ZfsX5ZzVk\n+4was+Wpl50zscoHFAMAtKlbwy5bssnqz2Me+fNbj2xt49L+E44748LjumEsAIAo9PxTsQAA\nrBPCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEkU9PcB6Zs6cOXvs\nsUdPTwEA9CJpmvb0CO8Tdh2Tz+cXLFjQ01MAALRC2BVqhx12KCsr6+kpOqCurq60tDSbzfb0\nIL1UXV1dmqalpaVFRf4raF19fX1xcbHz05Z77rln1qxZI0eO3GeffXp6ll6qsbExhFBSUtLT\ng/RSjY2NuVwum82uX79culMul2tubl6/zs+IESN6dgA/sgu19dZbb7311j09RQfMnz+/b9++\nxcXFPT1ILzV//vw0TauqqtavHxndadGiRWVlZc5PW5599tlZs2Ztsskmhx56aE/P0kvV1NQk\nSVJZWdnTg/RSNTU1DQ0NxcXF/fr16+lZeqn6+vrGxkbnp0O8eQIAIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBJFPT3AOpCmaU1NTU9P\n0eukaVpXV5fJaPfWpWkaQmhoaMjlcj09Sy/V3Nzs/LSj5RLK5/NLly7t6Vl6qaamphBCPp/v\n6UF6qZbz09zc7BJqS3Nzs//EVpckSVVVVVtrYwi7EIJ8aVUmk3Fm2pIkSZqmSZI4RW1JksT5\nWSOnqB1JkgQ/n9vWcn6CU9S2lv8rcH5W0f4JiSHskiSprKzs6Sl6nYaGhrKysuLi4p4epJdq\naGgIIZSWlpaVlfX0LL1ULpdzftrR8lvZz5921NTUOD/tqKmpaWpqymazTlFb6uvrGxsbnZ8O\nUcEAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Box Plot to visualize the distribution of Unit_Total across different years\n",
    "ggplot(filtered_units_data, aes(x = YEAR, y = Unit_Total)) +\n",
    "  geom_boxplot() +\n",
    "  labs(title = \"Box Plot of Unit_Total Across Different Years\",\n",
    "       x = \"Year\",\n",
    "       y = \"Unit Total\") +\n",
    "  theme_minimal()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4e856285",
   "metadata": {
    "papermill": {
     "duration": 0.011211,
     "end_time": "2024-07-31T06:37:31.756006",
     "exception": false,
     "start_time": "2024-07-31T06:37:31.744795",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Interpretation of the Box Plot\n",
    "\n",
    "The box plot shows the distribution of the Unit_Total across different years for the \"02RS\" program and the service manager symbol \"PET.\" Here’s what the plot tells us:\n",
    "\n",
    "1. **Box (Interquartile Range, IQR)**:\n",
    "   - The box represents the interquartile range (IQR), which contains the middle 50% of the data.\n",
    "   - The bottom of the box is the first quartile (Q1), and the top of the box is the third quartile (Q3).\n",
    "\n",
    "2. **Median**:\n",
    "   - The thick line inside the box represents the median (the middle value) of the Unit_Total.\n",
    "   - In this plot, the median appears to be around 175.\n",
    "\n",
    "3. **Whiskers**:\n",
    "   - The lines extending from the top and bottom of the box are called whiskers. They represent the range of the data within 1.5 times the IQR from the quartiles.\n",
    "   - The lower whisker extends to the smallest value within 1.5 times the IQR below Q1.\n",
    "   - The upper whisker extends to the largest value within 1.5 times the IQR above Q3.\n",
    "\n",
    "4. **Outliers**:\n",
    "   - There are no points outside the whiskers, indicating there are no outliers in the Unit_Total data.\n",
    "\n",
    "5. **Overall Range**:\n",
    "   - The overall range of Unit_Total spans from approximately 150 to 250.\n",
    "\n",
    "### Key Points:\n",
    "- **Median Value**: The median Unit_Total is around 175, indicating that half of the years have a Unit_Total above 175 and half below.\n",
    "- **Interquartile Range**: The IQR is quite large, spanning from about 175 to 225, indicating variability in the Unit_Total across different years.\n",
    "- **Whiskers**: The whiskers indicate that there are some years where the Unit_Total is as low as 150 and as high as 250, showing a broad range of values.\n",
    "- **No Outliers**: The absence of outliers suggests that the Unit_Total values are relatively consistent without any extreme values.\n",
    "\n",
    "### Conclusion:\n",
    "The box plot provides a visual summary of the distribution of Unit_Total across different years for the \"02RS\" program. The wide IQR and range suggest variability in the number of units under administration over the years. The median value gives a central tendency, while the whiskers show the overall range of the data."
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 5471449,
     "sourceId": 9071065,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30749,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 122.263562,
   "end_time": "2024-07-31T06:37:31.889233",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-07-31T06:35:29.625671",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
