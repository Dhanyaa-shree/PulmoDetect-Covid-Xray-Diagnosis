@echo off
echo ========================================
echo    PulmoDetect Project Setup
echo ========================================
echo.

REM Check Python
echo Checking Python installation...
if exist "C:\Users\Dell\AppData\Local\Programs\Python\Python311\python.exe" (
    echo [✓] Python found at: C:\Users\Dell\AppData\Local\Programs\Python\Python311\
) else (
    echo [✗] Python not found!
    pause
    exit /b 1
)

REM Create project directory
echo.
echo Creating project directory...
if not exist "C:\PulmoDetect" mkdir "C:\PulmoDetect"
cd /d "C:\PulmoDetect"

REM Create requirements.txt
echo.
echo Creating requirements.txt...
(
echo streamlit==1.29.0
echo numpy==1.24.3
echo pandas==2.0.3
echo matplotlib==3.7.2
echo seaborn==0.12.2
echo pillow==10.0.1
echo scikit-learn==1.3.2
echo joblib==1.3.2
echo plotly==5.17.0
echo streamlit-option-menu==0.3.6
echo tensorflow==2.15.0
) > requirements.txt

REM Install pip packages using full path
echo.
echo Installing dependencies (this may take a few minutes)...
echo Please wait...

"C:\Users\Dell\AppData\Local\Programs\Python\Python311\python.exe" -m pip install --upgrade pip

"C:\Users\Dell\AppData\Local\Programs\Python\Python311\Scripts\pip.exe" install --user -r requirements.txt

echo.
echo [✓] All dependencies installed!
echo.
echo ========================================
echo    NEXT STEPS:
echo ========================================
echo 1. Copy your model files to C:\PulmoDetect\:
echo    - cnn_feature_extractor.h5
echo    - svm_covid_model.pkl
echo    - feature_scaler.pkl
echo.
echo 2. Copy the app.py file to C:\PulmoDetect\
echo.
echo 3. Run the launch_app.bat file
echo ========================================
echo.
pause