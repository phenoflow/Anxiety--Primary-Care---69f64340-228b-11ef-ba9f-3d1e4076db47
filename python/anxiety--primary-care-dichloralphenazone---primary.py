# John, A., Marchant, A. L., Fone, D. L., McGregor, J. I., Dennis, M. S., Tan, J. O. A., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"d268.","system":"readv2"},{"code":"d114.","system":"readv2"},{"code":"d1ao.","system":"readv2"},{"code":"d1aj.","system":"readv2"},{"code":"d1an.","system":"readv2"},{"code":"d1ak.","system":"readv2"},{"code":"d119.","system":"readv2"},{"code":"d117.","system":"readv2"},{"code":"d1am.","system":"readv2"},{"code":"d1al.","system":"readv2"},{"code":"d112.","system":"readv2"},{"code":"d13..","system":"readv2"},{"code":"d11..","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('anxiety--primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["anxiety--primary-care-dichloralphenazone---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["anxiety--primary-care-dichloralphenazone---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["anxiety--primary-care-dichloralphenazone---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
