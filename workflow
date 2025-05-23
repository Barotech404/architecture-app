name: Build Architecture Application

on: [push]

jobs:
  build:
    runs-on: windows-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v3
      
    - name: Set up Python 3.10
      uses: actions/setup-python@v4
      with:
        python-version: "3.10"
        
    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        pip install pyinstaller
        pip install tk
        
    - name: Build executable
      run: |
        pyinstaller --onefile --windowed --noconsole --name ArchDesigner main.py
        
    - name: Upload artifact
      uses: actions/upload-artifact@v3
      with:
        name: Architecture-Designer
        path: dist/ArchDesigner.exe
