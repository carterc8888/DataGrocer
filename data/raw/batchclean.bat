@echo off
for %%f in (*.csv) do (
    python cleancsv.py "%%f"
)