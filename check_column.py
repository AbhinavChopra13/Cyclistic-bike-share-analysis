import pandas as pd
import os
from glob import glob

# Since the Python file is in the same folder as all CSV files,
# we can directly use *.csv
csv_files = glob("*.csv")

# Dictionary to store headers of each file
headers_dict = {}

for file in csv_files:
    try:
        # Read only the header row (faster)
        df = pd.read_csv(file, nrows=0)

        # Store column names
        headers_dict[os.path.basename(file)] = list(df.columns)

    except Exception as e:
        print(f"Error reading {file}: {e}")

# Check if any CSV files were found
if not headers_dict:
    print("No CSV files found in this folder.")
else:
    # Take the first file as reference
    first_file = list(headers_dict.keys())[0]
    reference_headers = headers_dict[first_file]

    print(f"\nReference File: {first_file}")
    print("-" * 50)

    # Compare all files with the reference file
    for file, headers in headers_dict.items():
        if headers == reference_headers:
            print(f"✓ {file} → Headers Match")
        else:
            print(f"✗ {file} → Headers Do NOT Match")

            missing = set(reference_headers) - set(headers)
            extra = set(headers) - set(reference_headers)

            if missing:
                print(f"   Missing Columns: {missing}")

            if extra:
                print(f"   Extra Columns: {extra}")