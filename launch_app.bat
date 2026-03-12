@echo off
cd /d D:\PulmoDetect
call venv_fresh\Scripts\activate
streamlit run app.py
pause