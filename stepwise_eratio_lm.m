%% Script for stepwise linear regression analysis from Halsted et al., 2024

% You will need to install the Statistics and Machine Learning Toolbox to
% run this code

% Load the Excel sheet into Matlab
filename = '/Users/ch22/Library/CloudStorage/GoogleDrive-ch22@williams.edu/My Drive/1. Projects - Work/Manuscript - Fluvial Ratios/Paper components/GeoChron Manuscript/Supplement/TS1_Published_Al_Be_Measurements.xlsx'; % Update the path to where your file is stored
data = readtable(filename, 'Sheet','Basin and Sample Data');

% Extract the variables and put them into their own table
e_ratio = data.Be_AlErosionRateRatio;
erosion = data.BeErosionRate_m_myr_;
erosion = log(erosion);
elv_mu = data.Multi_ResolutionMeanBasinElevation_mA_s_l__;
area = data.BasinArea_km2_;
area = log(area);
slp_mu = data.Multi_ResolutionMeanBasinSlope_degrees_;
rel_2km = data.MeanLocalRelief_m_2km_;
precip_mm_mu = data.BasinMeanAnnualPrecipitation_mm_;
ai_mu = data.BasinMeanAridityIndex_AIUnits_;

tbl = table(e_ratio, area, erosion, elv_mu, slp_mu, rel_2km, precip_mm_mu, ai_mu);


% Perform stepwise linear regression
% 'E_ratio' is the dependent variable
% The rest are independent variables
model = stepwiselm(tbl, 'e_ratio ~ 1 + area', ...
    'Criterion','sse', 'Upper','linear', 'Verbose', 2);

% Display the resulting model
disp(model);

%Reduced Chi-Square Test
% Calculate the residuals of the model
residuals = model.Residuals.Raw;

% Calculate the observed chi-squared value
chiSquared = sum((residuals.^2) ./ model.Fitted);

% Calculate the degrees of freedom: number of observations minus number of parameters
% Number of parameters includes all coefficients (intercept and slopes) and subtract 1 for the estimate
degreesOfFreedom = height(tbl) - numel(model.Coefficients.Estimate);

% Calculate the reduced chi-squared value
reducedChiSquared = chiSquared / degreesOfFreedom;

% Display the reduced chi-squared value
disp(['Reduced Chi-Squared Value: ', num2str(reducedChiSquared)]);

