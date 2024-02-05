import pandas as pd
import csv 
import sys
import re
def replace_pattern(text, pattern, replacement):
    return re.sub(pattern, replacement, text, flags=re.IGNORECASE)   
if __name__ == "__main__":
    f_path, cleaned_path = sys.argv[1] ,"../clean/"+sys.argv[1]
    #f_path, cleaned_path = "2011-06.csv","../clean/"+'2007-09.csv'
    print(f_path)
    with open(f_path, 'r') as fin, open(cleaned_path, 'w', newline='')as fout:
        reader = csv.reader(fin)
        writer = csv.writer(fout)
        #https://www.appsloveworld.com/pandas/100/86/finding-the-row-number-for-the-header-row-in-a-csv-file-pandas-dataframe
        (l,header) = next((l,row) for l, row in enumerate(reader) if "Sydney" in row )
        header_new = ['category','item','quantity']
        c=1
        for n,i in enumerate(header[1:]):
            if i != '':
                c=n+1
                break
        header_new += (loc.strip() for loc in header[c:c+8])
            
            
        cat, subcat ='', ''
        writer.writerow(header_new)
        for row in reader: 
            #squash columns for older csvs where category and items were in seperate columns 
            if c>1:
                row[0] = row[0] or row[1] or row[2]
            row_new=[None]*3 
            if row[c] == '':
                #row stores category if there is no price value  
                cat = row[0].split('(')[0].strip()
                continue   
            item_quant = row[0].split('(') 
            item = item_quant[0].strip()
            
            #items either (1)successfully seperated if quantity in bracket, (2)quantity is stored outside of bracket and extracted via regex, (3) no quantity stored
            if len(item_quant)>1:
                quant = item_quant[1][:-1] 
            elif re.search('(\d+.*)',item): 
                quant = re.search('(\d+.*)',item).group(1)
            else: quant = ''
            if item in ["Leg","Loin chops","Forequarter chops"]:
                item = f"{cat} {item}"
            row_new[0], row_new[1],row_new[2]= cat.strip().capitalize() ,item.strip().capitalize() ,quant.strip()
            row_new.extend(pr.replace(',','') for pr in row[c:c+8])
            writer.writerow(row_new)
    #extra processing for inconsistent names: 
    item_mapping = {
        r'^milk.*': 'Milk',
        r'cheese.*': 'Cheese',
        r'Breakfast cereal.*':'Breakfast cereal',
        r'Rice.*':'Rice',
        r'Sausages.*':'Sausages',
        r'Chocolate, milk.*':'Chocolate milk',
        r'Eggs.*':'Eggs',
        r'Scotch.*':'Scotch',
        'H\'hold': 'Household', 
        'Proc\'ed': 'Processed',\
        
    }
    cat_mapping={
        'H\'hold': 'Household',
        'houshold': 'Household',
        'Proc\'ed': 'Processed',
        'beef': 'Meat and seafoods',
        'lamb': 'Meat and seafoods',
        'pork': 'Meat and seafoods'
    }
    
    df = pd.read_csv(cleaned_path)
    for pattern, replacement in cat_mapping.items():
        df['category'] = df['category'].apply(lambda x:replace_pattern(x, pattern, replacement))
    for pattern, replacement in item_mapping.items():
        df['item'] = df['item'].apply(lambda x:replace_pattern(x, pattern, replacement))
    df.to_csv(cleaned_path, index=False)
    
            
             
        
                
            
  