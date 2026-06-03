import pandas as pd

# Load data
df = pd.read_csv("Validated Data/Validated_PCMRT_Main_Dataset.csv")

# Keep required columns
ta_df = df[["Company Name", "Therapeutic Area"]].copy()

# Split therapeutic areas
ta_df["Therapeutic Area"] = ta_df["Therapeutic Area"].str.split(",")

# Convert list into separate rows
ta_df = ta_df.explode("Therapeutic Area")

# Remove extra spaces
ta_df["Therapeutic Area"] = (ta_df["Therapeutic Area"].str.strip())

# Remove blanks
ta_df = ta_df[ta_df["Therapeutic Area"].notna()]

# Save file
ta_df.to_csv("Validated Data/therapeutic_area_master.csv",index=False)

print("therapeutic_area_master.csv created successfully")
print(ta_df.head())