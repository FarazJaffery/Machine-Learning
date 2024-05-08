#  **Machine Learning: Lung Diseases Classification Research Project**
## **Project Title:**

### [An Automated System for the Classification of Bronchiolitis and Bronchiectasis Diseases using Lung Sound Analysis](https://ieeexplore.ieee.org/author/37089800514)

## **Purpose of the Project:**
This repository contains the code and resources for a machine-learning project aimed at classifying lung diseases using audio signal analysis. The project focuses on developing a classification model to identify bronchiolitis and bronchiectasis from lung sounds.

## **Methodology:**
The methodology involves preprocessing lung sound signals using Discrete Wavelet Transform (DWT) to remove noise and then extracting Mel Frequency Cepstral Coefficients (MFCCs) for feature representation. The Fine K-Nearest Neighbors (KNN) classifier is employed with ten-fold cross-validation to ensure robustness against random factors.

## **Setup and Running the Code:**
### **To run the code, follow these steps:**

1.  Clone the repository to your local machine.
2. Open MATLAB and navigate to the cloned repository folder.
3.  Also Download the ICBHI 2017 dataset from [here](https://bhichallenge.med.auth.gr/ICBHI_2017_Challenge).
4.  Place the Healthy, Bronchiolitis, and Bronchiectasis signals by following the "Auto_Segmentation_Usage_Guide".
5.  Run the "Auto_Segmentation" script to augment the audio signals.
6.  Do not move the augmented audio files to another folder.
7.  Run the "Final_Code" script to process the audio signals and extract features.
8. Export/Copy the extracted features to an Excel file.
9. Label the feature by following the "Final_Code_Usage_Guide"
10. Import Selected features into the Classification Learner app in MATLAB.
11. Set the cross-validation method to ten-fold cross-validation within the app.
12. Choose the FINE KNN model from the list of classifiers.
13. Train the model and evaluate its performance using the confusion matrix and accuracy metrics.


## **Setup and Running the myTrainedModel:**
### **To run the given trained model, follow these steps:**

1. Clone the repository to your local machine.
2. Open MATLAB and navigate to the cloned repository folder.
3. Load the trained model using the command: load('myTrainedModel.mat');
4. To make predictions with new data, ensure it matches the training data’s features
5. Use this command for predictions: newPredictions = trainedModel.predictFcn(newData);

## **Dependencies:**
1. MATLAB (R2021a or above)

2. Classification Learner Toolbox


## **Data:**
The ICBHI 2017 dataset was used for this study. Click [here](https://bhichallenge.med.auth.gr/ICBHI_2017_Challenge) for the dataset.

## **Citation:**
Please cite [here](https://ieeexplore.ieee.org/author/37089800514) if you use this code or the trained model for your research.
