# PulmoDetect: COVID-19 Radiograph Diagnosis

PulmoDetect is a machine learning project designed to support early detection of COVID-19 using chest X-ray images. The system combines deep learning and classical machine learning techniques through a hybrid CNN–SVM architecture to classify radiographic images and assist in identifying potential COVID-19 cases.

## Project Overview

Medical imaging has played an important role in supporting diagnosis during the COVID-19 pandemic. This project explores how artificial intelligence can help analyze lung X-ray images and identify patterns associated with infection. The model extracts features from radiographic images using a Convolutional Neural Network (CNN) and then performs classification using a Support Vector Machine (SVM).

The goal of PulmoDetect is to demonstrate how machine learning methods can assist healthcare professionals by providing an additional analytical tool for image-based diagnosis.

## Key Features

* Automated analysis of chest X-ray images
* Hybrid CNN–SVM architecture for improved classification
* Feature extraction using deep learning
* Image preprocessing and prediction pipeline
* Python-based implementation for reproducible experiments

## Tech Stack

* Python
* TensorFlow / Keras
* NumPy
* OpenCV
* Scikit-learn

## Project Files

* **app.py** – Main script for running the application
* **requirements.txt** – Required Python libraries
* **setup_pulmodetect.bat** – Environment setup script
* **launch_app.bat** – Script to launch the application

## How to Run the Project

1. Clone the repository
2. Install required libraries

```
pip install -r requirements.txt
```

3. Run the application

```
python app.py
```

## Future Improvements

* Improve model accuracy with larger datasets
* Add a web interface for easier interaction
* Integrate real-time prediction visualization
* Extend the model to detect other lung diseases

## Disclaimer

This project is intended for academic and research purposes only. It is not designed to replace professional medical diagnosis or clinical decision-making.

## Author

Dhanyaa Shree
Integrated M.Sc. Software Systems
Sri Krishna Arts and Science College
