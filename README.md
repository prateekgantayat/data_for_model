# data_for_model
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
  3) The spatial resolution of the data is 100 m
  4) This data was extracted from the MAR model outputs
  
The specifications of the daily snow depth data is as follows:
  1) The file format is sdep[day number].dat
  2) day number corresponds to the number of the day in which the model is run. For example, January 1st of the year is the 1st day and December 31st is 365th day (or 366th day in the case of a leap year)
  3) The spatial resolution of the data is 100 m
  4) This data was extracted from the MAR model outputs
  
The specifications of the daily snow density data is as follows:
  1) The file format is sden[day number].dat
  2) day number corresponds to the number of the day in which the model is run. For example, January 1st of the year is the 1st day and December 31st is 365th day (or 366th day in the case of a leap year)
  3) The spatial resolution of the data is 100 m
  4) This data was extracted from the MAR model outputs

The specifications of the daily surface von Mises stress data is as follows:
  1) The file format is stress[day number].dat
  2) day number corresponds to the number of the day in which the model is run. For example, January 1st of the year is the 1st day and December 31st is 365th day (or 366th day in the case of a leap year)
  3) The spatial resolution of the data is 100 m
  4) This data was estimated from the monthly surface velocity data (MEASURES data)
