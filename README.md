# Hydrology modules used for region 2
Surface water routing, Rapid drainage (Hydrofracture), Slow lake drainage (Channel Incision)

NOTE: Lake refreezing module was not used for region 2
# Data used for region2
Input data used for running the hydrology model
This data is for region 2 for the year 2019
The data is from day number 100 till day number 334
The data can be classified into 6 categories
 1) Surface elevation
 2) Ice thickness
 3) Daily runoff
 4) Daily snow depth
 5) Daily snow density
 6) Daily surface von Mises stress field
The dem2.dat file contains the surface elevation or DEM of region 2 at a spatial resolution of 100 m
The Ice_thickness.dat file contains the ice thickness data for region 2 at a spatial resolution of 100 m
The specifications of the daily runoff data is as follows:
  1) The file format is day[day number].dat
  2) day number corresponds to the number of the day in which the model is run. For example, January 1st of the year is the 1st day and December 31st is 365th day (or 366th day in the case of a leap year)
  3) The spatial resolution of the runoff data is 100 m
  4) The unit is mm/day
  5) This data was extracted from the MAR model outputs
  
The specifications of the daily snow depth data is as follows:
  1) The file format is sdep[day number].dat
  2) day number corresponds to the number of the day in which the model is run. For example, January 1st of the year is the 1st day and December 31st is 365th day (or 366th day in the case of a leap year)
  3) The spatial resolution of the snow depth data is 100 m
  4) The unit is m
  5) This data was extracted from the MAR model outputs
  
The specifications of the daily snow density data is as follows:
  1) The file format is sden[day number].dat
  2) day number corresponds to the number of the day in which the model is run. For example, January 1st of the year is the 1st day and December 31st is 365th day (or 366th day in the case of a leap year)
  3) The spatial resolution of the snow density data is 100 m
  4) The unit is kg/m^3
  5) This data was extracted from the MAR model outputs

The specifications of the daily surface von Mises stress data is as follows:
  1) The file format is stress[day number].dat
  2) day number corresponds to the number of the day in which the model is run. For example, January 1st of the year is the 1st day and December 31st is 365th day (or 366th day in the case of a leap year)
  3) The spatial resolution of the surface von Mises stress data is 100 m
  4) The unit is Pa
  5) This data was estimated from the monthly surface velocity data (MEASURES data)

# Instructions for running the model

The following steps needs to be followed before running an experiment.

1. Transfer all the data into a single folder and note its 'pathname'.
2. In the file main_prog1.f update the 'path' against the variable 'PATH'
3. Count the number of rows and columns in the dem2.dat file and update the RO and CO variables in the main_prog1.f
4. Type the following fortran command to compile the files:

gfortran main_prog1.f hydrofracture1.f crev_lake1.f non_lake_crev_new1.f crev_cells1.f lake_chn_inc_ov1.f lake_del1.f runoff_dist1.f lake_catchment1.f new_outlet1.f path_sel_chn_inc1.f channel_inc1.f only_overflow1.f lake_red_trans1.f flow_dir1.f water_transfer1.f sink_separate1.f fill_depression1.f fill_half_full_depression1.f margin_flow1.f lake_nucleus_isolation1.f lake_nucleus_isolation21.f sink_locator1.f reinit1.f stress_int1.f -fopenmp -o main_prog1.exe

5. Type ./main_prog1.exe
6. In case you get the error message: 'Segmentation fault...', increase the value against the variale SX in main_prog1.f and repeat steps 4 and 5.

