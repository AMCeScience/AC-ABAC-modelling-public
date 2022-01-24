files = ['p10-times.txt', 'p20-times.txt', 'p30-times.txt', 'p40-times.txt', 'p50-times.txt', 'p60-times.txt', 'p70-times.txt', 'p80-times.txt', 'p90-times.txt', 'p100-times.txt']


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
<<<<<<< HEAD
				dicts[file]["evaluation"].append(lines[i][11:15])
			else:
				print(lines[i][6:9])
				dicts[file]["total"].append(lines[i][6:10])

import json
with open('simulation-times-parallel.json', 'w', encoding='utf-8') as f:
    json.dump(dicts, f, ensure_ascii=False, indent=4)
=======
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
>>>>>>> main
