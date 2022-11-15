import pandas as pd
import sys


input_file=sys.argv[1]
city=sys.argv[2]

availability_df=pd.read_csv(input_file, sep = ";")
count=availability_df[(availability_df.is_installed == "OUI") & (availability_df.nom_arrondissement_communes == city)]["numbikesavailable"].sum()
print("The number of available bikes in " + city + " is: " + str(count)) 