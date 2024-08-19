# fluvial_ratios
Supplementary data and code for the analyses and figures featured in the manuscript by Halsted et al. currently under peer-review in Geochronology.

The 'Fluvial_ratios_code_notebook' is a Jupyter Notebook containing the code needed to replicate all statistical analyses described in the manuscript. You will need to download Table S1 and copy the file path prior to running the code. This notebook also contains code to run extra analyses that were mentioned, but not detailed, in the manuscript, such as a replication of ANOVA post-hoc tests using medians instead of means. These extra analyses were performed to check statistical assumptions and are included in the interest of completeness. Also included in this notebook is the code used to create Figures 4, 5, and 6. 

The 'stepwise_eratio_lm' file is a short Matlab script to run the stepwise linear model regression analysis described in the manuscript. You will need to download Table S1 and copy the file path prior to running this script.

Table TS1 is an Excel workbook with four sheets. The 'Basin and Sample Data' sheet is needed to run the Jupyter Notebook and Matlab script. This sheet contains cosmogenic nuclide measurement data, nuclide-specific erosion rate calculations, and source basin physiological and climatological data for all fluvial sediment samples in this compilation. The 'Standard Correction' sheet contains original nuclide concentration measurements, AMS standards, and conversion factors (where necessary) to normalize all previously-published 10Be and 26Al nuclide measurements to the 07KNSTD and KNSTD standards, respectively. The 'CRONUS V3' sheet contains all sample information formatted to the input template for the online erosion rate calculator formerly known as CRONUS, version 3, which can be found at this URL: https://hess.ess.washington.edu/math/v3/v3_erosion_in.html

Table TS2 contains AMS measurements, nuclide concentration calculations, and CRONUS entry data for the 121 new 26Al measurements conducted at the University of Vermont. 

The 'Fluvial_Ratios_Supplement' file is a Microsoft Word document describing the sources and procedures to calculate physiological and climatological parameters for basins.
