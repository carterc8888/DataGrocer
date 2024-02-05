@echo off
for %%f in (../data/clean/*.csv) do (
    python import_csv.py "../data/clean/%%f"
)