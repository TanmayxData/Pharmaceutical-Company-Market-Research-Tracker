import pandas as pd

# Load dataset
df = pd.read_csv("Raw Data/PCMRT_Main_Dataset.csv", encoding="utf-8")

# -----------------------------
# Validation Checks
# -----------------------------

missing_company = df["Company Name"].isnull().sum()

missing_country = df["Country"].isnull().sum()

invalid_revenue = pd.to_numeric(df["Revenue"], errors="coerce").isnull().sum()

invalid_employees = pd.to_numeric(df["Employees"], errors="coerce").isnull().sum()

invalid_urls = (~df["Website"].astype(str).str.startswith("https://")).sum()

duplicate_companies = df.duplicated(subset=["Company Name"]).sum()

missing_values = df.isnull().sum()

# -----------------------------
# Data Quality Report
# -----------------------------

report = pd.DataFrame({
    "Metric": [
        "Total Records",
        "Missing Company Name",
        "Missing Country",
        "Invalid Revenue",
        "Invalid Employees",
        "Invalid URLs",
        "Duplicate Companies"
    ],
    "Value": [
        len(df),
        missing_company,
        missing_country,
        invalid_revenue,
        invalid_employees,
        invalid_urls,
        duplicate_companies
    ]
})

# Save report
report.to_excel("Report.xlsx",index=False)

# Save validated dataset
df.to_csv("Validated Data/Validated_PCMRT_Main_Dataset.csv",index=False)

# Print results
print("\nDATA QUALITY REPORT\n")
print(report)

print("\nMISSING VALUES BY COLUMN\n")
print(missing_values)

print("\nFiles Created Successfully:")
print("1. Validated Data/Validated_PCMRT_Main_Dataset.csv")
print("2. Report.xlsx")



