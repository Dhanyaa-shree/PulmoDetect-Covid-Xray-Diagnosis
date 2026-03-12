import pickle

print("Checking SVM model file...")

with open('svm_covid_model.pkl', 'rb') as f:
    data = f.read()
    
print(f"File size: {len(data)} bytes ({len(data)/1024:.1f} KB)")

try:
    model = pickle.loads(data)
    print("✅ Model loaded with pickle!")
    print(f"Model type: {type(model)}")
except Exception as e:
    print(f"❌ Pickle failed: {str(e)[:100]}")
    
    # Try joblib
    try:
        import joblib
        model = joblib.load('svm_covid_model.pkl')
        print("✅ Model loaded with joblib!")
        print(f"Model type: {type(model)}")
    except Exception as e2:
        print(f"❌ Joblib failed: {str(e2)[:100]}")
