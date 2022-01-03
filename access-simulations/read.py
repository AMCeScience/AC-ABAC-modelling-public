files = ['s1-times.txt', 's2-times.txt', 's3-times.txt', 's4-times.txt', 's5-times.txt', 's6-times.txt', 's7-times.txt', 's8-times.txt', 's9-times.txt', 's10-times.txt', 's11-times.txt', 's12-times.txt', 's13-times.txt', 's14-times.txt', 's15-times.txt']


dicts = {}

for file in files:
	lines = []
	with open(file) as f:
		lines = f.readlines()
		dicts[file] = {
			"evaluation" : [],
			"total" : []
		}
		for i in range(len(lines)):
			if i % 2 == 0:
				print(lines[i][11:14])
				dicts[file]["evaluation"].append(lines[i][11:14])
			else:
				print(lines[i][6:9])
				dicts[file]["total"].append(lines[i][6:9])

import json
with open('simulation-times.json', 'w', encoding='utf-8') as f:
    json.dump(dicts, f, ensure_ascii=False, indent=4)
	# for line in lines:
	    # print(line[0][11:14])
		# print(line[1][6:9])