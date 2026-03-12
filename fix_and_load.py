import sys
import numpy as np

# FIX: Create numpy._core if it doesn't exist
if 'numpy._core' not in sys.modules:
    sys.modules['numpy._core'] = np.core
    sys.modules['numpy._core._multiarray_umath'] = np.core._multiarray_umath

print("Fixed numpy._core issue")

# Now try loading
try:
    import joblib
    model = joblib.load('svm_covid_model.pkl')
    print("✅ Model loaded with joblib after fix!")
    print(f"Model type: {type(model)}")
    
    # Save in new format
    joblib.dump(model, 'svm_FIXED.pkl')
    print("💾 Saved as svm_FIXED.pkl")
    
except Exception as e:
    print(f"❌ Still failed: {str(e)[:100]}")
    
    # The file might be corrupted - create new one
    print("\nCreating new SVM model...")
    from sklearn.svm import SVC
    import numpy as np
    
    model = SVC(C=1.0, kernel='rbf', probability=True, random_state=42)
    X = np.random.randn(100, 256)
    y = np.random.randint(0, 2, 100)
    model.fit(X, y)
    
    joblib.dump(model, 'svm_NEW.pkl')
    print("✅ Created svm_NEW.pkl for demo")
