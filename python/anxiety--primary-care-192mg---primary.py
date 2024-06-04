# John, A., Marchant, A. L., Fone, D. L., McGregor, J. I., Dennis, M. S., Tan, J. O. A., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"d216.","system":"readv2"},{"code":"d21u.","system":"readv2"},{"code":"d213.","system":"readv2"},{"code":"d21B.","system":"readv2"},{"code":"d21a.","system":"readv2"},{"code":"d21e.","system":"readv2"},{"code":"d211.","system":"readv2"},{"code":"d21r.","system":"readv2"},{"code":"d26A.","system":"readv2"},{"code":"d21E.","system":"readv2"},{"code":"d21g.","system":"readv2"},{"code":"d21p.","system":"readv2"},{"code":"d21m.","system":"readv2"},{"code":"d217.","system":"readv2"},{"code":"d12v.","system":"readv2"},{"code":"d1hz.","system":"readv2"},{"code":"d1h1.","system":"readv2"},{"code":"d121.","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('anxiety--primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["anxiety--primary-care-192mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["anxiety--primary-care-192mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["anxiety--primary-care-192mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
