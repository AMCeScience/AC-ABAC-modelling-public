import sys
import matplotlib.pylab as plt
import json
import math
import numpy as np
import warnings
from matplotlib.backends.backend_pdf import PdfPages
#from scipy import stats
from matplotlib.patches import Polygon
import Statistics as stats


# json_file0 = json.load(open("simulation-times-parallel0.json","r"))
# json_file1 = json.load(open("simulation-times-parallel1.json","r"))
# json_file2 = json.load(open("simulation-times-parallel2.json","r"))
json_file = json.load(open("simulation-times-parallel.json","r"))

# #0
# p10_total0 = json_file["p10-times.txt"]["total"]
# p20_total0 = json_file["p20-times.txt"]["total"]
# p30_total0 = json_file["p30-times.txt"]["total"]
# p40_total0 = json_file["p40-times.txt"]["total"]
# p50_total0 = json_file["p50-times.txt"]["total"]
# p60_total0 = json_file["p60-times.txt"]["total"]
# p70_total0 = json_file["p70-times.txt"]["total"]
# p80_total0 = json_file["p80-times.txt"]["total"]
# p90_total0 = json_file["p90-times.txt"]["total"]
# p100_total0 = json_file["p100-times.txt"]["total"]

# p10_evaluation0 = json_file["p10-times.txt"]["evaluation"]
# p20_evaluation0 = json_file["p20-times.txt"]["evaluation"]
# p30_evaluation0 = json_file["p30-times.txt"]["evaluation"]
# p40_evaluation0 = json_file["p40-times.txt"]["evaluation"]
# p50_evaluation0 = json_file["p50-times.txt"]["evaluation"]
# p60_evaluation0 = json_file["p60-times.txt"]["evaluation"]
# p70_evaluation = json_file["p70-times.txt"]["evaluation"]
# p80_evaluation = json_file["p80-times.txt"]["evaluation"]
# p90_evaluation = json_file["p90-times.txt"]["evaluation"]
# p100_evaluation = json_file["p100-times.txt"]["evaluation"]

# #1
# p10_total = json_file["p10-times.txt"]["total"]
# p20_total = json_file["p20-times.txt"]["total"]
# p30_total = json_file["p30-times.txt"]["total"]
# p40_total = json_file["p40-times.txt"]["total"]
# p50_total = json_file["p50-times.txt"]["total"]
# p60_total = json_file["p60-times.txt"]["total"]
# p70_total = json_file["p70-times.txt"]["total"]
# p80_total = json_file["p80-times.txt"]["total"]
# p90_total = json_file["p90-times.txt"]["total"]
# p100_total = json_file["p100-times.txt"]["total"]

# p10_evaluation = json_file["p10-times.txt"]["evaluation"]
# p20_evaluation = json_file["p20-times.txt"]["evaluation"]
# p30_evaluation = json_file["p30-times.txt"]["evaluation"]
# p40_evaluation = json_file["p40-times.txt"]["evaluation"]
# p50_evaluation = json_file["p50-times.txt"]["evaluation"]
# p60_evaluation = json_file["p60-times.txt"]["evaluation"]
# p70_evaluation = json_file["p70-times.txt"]["evaluation"]
# p80_evaluation = json_file["p80-times.txt"]["evaluation"]
# p90_evaluation = json_file["p90-times.txt"]["evaluation"]
# p100_evaluation = json_file["p100-times.txt"]["evaluation"]

# #2
# p10_total = json_file["p10-times.txt"]["total"]
# p20_total = json_file["p20-times.txt"]["total"]
# p30_total = json_file["p30-times.txt"]["total"]
# p40_total = json_file["p40-times.txt"]["total"]
# p50_total = json_file["p50-times.txt"]["total"]
# p60_total = json_file["p60-times.txt"]["total"]
# p70_total = json_file["p70-times.txt"]["total"]
# p80_total = json_file["p80-times.txt"]["total"]
# p90_total = json_file["p90-times.txt"]["total"]
# p100_total = json_file["p100-times.txt"]["total"]

# p10_evaluation = json_file["p10-times.txt"]["evaluation"]
# p20_evaluation = json_file["p20-times.txt"]["evaluation"]
# p30_evaluation = json_file["p30-times.txt"]["evaluation"]
# p40_evaluation = json_file["p40-times.txt"]["evaluation"]
# p50_evaluation = json_file["p50-times.txt"]["evaluation"]
# p60_evaluation = json_file["p60-times.txt"]["evaluation"]
# p70_evaluation = json_file["p70-times.txt"]["evaluation"]
# p80_evaluation = json_file["p80-times.txt"]["evaluation"]
# p90_evaluation = json_file["p90-times.txt"]["evaluation"]
# p100_evaluation = json_file["p100-times.txt"]["evaluation"]

#new
p10_total = json_file["p10-times.txt"]["total"]
p20_total = json_file["p20-times.txt"]["total"]
p30_total = json_file["p30-times.txt"]["total"]
p40_total = json_file["p40-times.txt"]["total"]
p50_total = json_file["p50-times.txt"]["total"]
p60_total = json_file["p60-times.txt"]["total"]
p70_total = json_file["p70-times.txt"]["total"]
p80_total = json_file["p80-times.txt"]["total"]
p90_total = json_file["p90-times.txt"]["total"]
p100_total = json_file["p100-times.txt"]["total"]

p10_evaluation = json_file["p10-times.txt"]["evaluation"]
p20_evaluation = json_file["p20-times.txt"]["evaluation"]
p30_evaluation = json_file["p30-times.txt"]["evaluation"]
p40_evaluation = json_file["p40-times.txt"]["evaluation"]
p50_evaluation = json_file["p50-times.txt"]["evaluation"]
p60_evaluation = json_file["p60-times.txt"]["evaluation"]
p70_evaluation = json_file["p70-times.txt"]["evaluation"]
p80_evaluation = json_file["p80-times.txt"]["evaluation"]
p90_evaluation = json_file["p90-times.txt"]["evaluation"]
p100_evaluation = json_file["p100-times.txt"]["evaluation"]

#print(p10_total)


s = stats.Statistics()
Mean_p10_total = s.getMean(p10_total)
Mean_p10_evaluation = s.getMean(p10_evaluation)

err_p10_total = s.getConfidenceInterval(p10_total)
err_p10_evaluation = s.getConfidenceInterval(p10_evaluation)

Mean_p20_total = s.getMean(p20_total)
Mean_p20_evaluation = s.getMean(p20_evaluation)

err_p20_total = s.getConfidenceInterval(p20_total)
err_p20_evaluation = s.getConfidenceInterval(p20_evaluation)

Mean_p30_total = s.getMean(p30_total)
Mean_p30_evaluation = s.getMean(p30_evaluation)

err_p30_total = s.getConfidenceInterval(p30_total)
err_p30_evaluation = s.getConfidenceInterval(p30_evaluation)

Mean_p40_total = s.getMean(p40_total)
Mean_p40_evaluation = s.getMean(p40_evaluation)

err_p40_total = s.getConfidenceInterval(p40_total)
err_p40_evaluation = s.getConfidenceInterval(p40_evaluation)

Mean_p50_total = s.getMean(p50_total)
Mean_p50_evaluation = s.getMean(p50_evaluation)

err_p50_total = s.getConfidenceInterval(p50_total)
err_p50_evaluation = s.getConfidenceInterval(p50_evaluation)

Mean_p60_total = s.getMean(p60_total)
Mean_p60_evaluation = s.getMean(p60_evaluation)

err_p60_total = s.getConfidenceInterval(p60_total)
err_p60_evaluation = s.getConfidenceInterval(p60_evaluation)

Mean_p70_total = s.getMean(p70_total)
Mean_p70_evaluation = s.getMean(p70_evaluation)

err_p70_total = s.getConfidenceInterval(p70_total)
err_p70_evaluation = s.getConfidenceInterval(p70_evaluation)

Mean_p80_total = s.getMean(p80_total)
Mean_p80_evaluation = s.getMean(p80_evaluation)

err_p80_total = s.getConfidenceInterval(p80_total)
err_p80_evaluation = s.getConfidenceInterval(p80_evaluation)

Mean_p90_total = s.getMean(p90_total)
Mean_p90_evaluation = s.getMean(p90_evaluation)

err_p90_total = s.getConfidenceInterval(p90_total)
err_p90_evaluation = s.getConfidenceInterval(p90_evaluation)

Mean_p100_total = s.getMean(p100_total)
Mean_p100_evaluation = s.getMean(p100_evaluation)

err_p100_total = s.getConfidenceInterval(p100_total)
err_p100_evaluation = s.getConfidenceInterval(p100_evaluation)


# client

# json_file10 = json.load(open("parallel-client-total-10.json","r"))
# json_file20 = json.load(open("parallel-client-total-20.json","r"))
# json_file30 = json.load(open("parallel-client-total-30.json","r"))
# json_file40 = json.load(open("parallel-client-total-40.json","r"))
# json_file50 = json.load(open("parallel-client-total-50.json","r"))
# json_file60 = json.load(open("parallel-client-total-60.json","r"))
# json_file70 = json.load(open("parallel-client-total-70.json","r"))
# json_file80 = json.load(open("parallel-client-total-80.json","r"))
# json_file90 = json.load(open("parallel-client-total-90.json","r"))
# json_file100 = json.load(open("parallel-client-total-100.json","r"))




# c10 =[]
# c20 =[]
# c30 =[]
# c40 =[]
# c50 =[]
# c60 =[]
# c70 =[]
# c80 =[]
# c90 =[]
# c100 =[]

# for k in json_file10.keys():
# 	c10.append(json_file10[k])

# print(c10)	

# for k in json_file20.keys():
# 	c20.append(json_file20[k])

# print(c20)	

# for k in json_file30.keys():
# 	c30.append(json_file30[k])

# print(c30)	

# for k in json_file40.keys():
# 	c40.append(json_file40[k])

# print(c40)	

# for k in json_file50.keys():
# 	c50.append(json_file50[k])

# print(c50)	

# for k in json_file60.keys():
# 	c60.append(json_file60[k])

# print(c60)

# for k in json_file70.keys():
# 	c70.append(json_file70[k])

# print(c70)

# for k in json_file80.keys():
# 	c80.append(json_file80[k])

# print(c80)

# for k in json_file90.keys():
# 	c90.append(json_file90[k])

# print(c90)

# for k in json_file100.keys():
# 	c100.append(json_file100[k])

# print(c100)					

# Mean_c10 = s.getMean(c10)
# err_c10 = s.getConfidenceInterval(c10)
# Mean_c20 = s.getMean(c20)
# err_c20 = s.getConfidenceInterval(c20)
# Mean_c30 = s.getMean(c30)
# err_c30 = s.getConfidenceInterval(c40)
# Mean_c40 = s.getMean(c40)
# err_c40 = s.getConfidenceInterval(c40)
# Mean_c50 = s.getMean(c50)
# err_c50 = s.getConfidenceInterval(c50)
# Mean_c60 = s.getMean(c60)
# err_c60 = s.getConfidenceInterval(c60)
# Mean_c70 = s.getMean(c70)
# err_c70 = s.getConfidenceInterval(c70)
# Mean_c80 = s.getMean(c80)
# err_c80 = s.getConfidenceInterval(c80)
# Mean_c90 = s.getMean(c90)
# err_c90 = s.getConfidenceInterval(c90)
# Mean_c100 = s.getMean(c100)
# err_c100 = s.getConfidenceInterval(c100)

# mean_c = [Mean_c10,Mean_c20,Mean_c30,Mean_c40,Mean_c50,Mean_c60,Mean_c70,Mean_c80,Mean_c90, Mean_c100]
# err_c = [err_c10,err_c20,err_c30,err_c40,err_c50,err_c60,err_c70,err_c80, err_c90, err_c100]

# # #bar

# x =[1,2,3,4,5,6,7,8,9,10]
# labels= ['10', '20','30','40','50','60','70','80','90','100']
# plt.rc('xtick', labelsize=8) 
# plt.rc('ytick', labelsize=10)

# fig, ax = plt.subplots()

# #kwargs = dict(capsize=2, elinewidth=1.5, linewidth=1, ms=12)
# ax.bar(x, mean_c, yerr=err_c, label='ABAC total')
# #ax.bar(x, , label='Policy evaluation' )
# #ax.bar(x, Av_Policy, yerr=err_Policy, label='Policy evaluation' )
# #ax.bar([1,2,3,4,12,14], P_Policy,  color='olivedrab', label='Policy evaluation', label='Permit')
# #ax.bar([5,6,7,8,9,10,11,13,15], D_Policy, color='orangered', ecolor='orange', label='Denial' )
# #ax.bar(x, AvTotal, 35, yerr=errTotal, color='grey', label='Total')
# ax.legend(loc='best', frameon=True, fontsize=12)
# ax.set_xlabel('Number of simultaneous requests', fontsize=12)
# ax.set_ylabel('Time (s)', fontsize=12)
# ax.set_xticks(x)
# ax.set_xticklabels(labels)
# #ax.set_xticks('S1', 'S2','S3','S4','S5','S6','S7','S8','S9','S10','S11','S12','S13','S14','S15')
# plotfile = 'ParallelBarclient.pdf'
# pp = PdfPages(plotfile)
# pp.savefig()
# pp.close()
# plt.show()
# plt.clf()
# plt.cla()
# plt.close()





Av_Policy = [Mean_p10_evaluation, Mean_p20_evaluation, Mean_p30_evaluation, Mean_p40_evaluation, Mean_p50_evaluation, Mean_p60_evaluation, Mean_p70_evaluation, Mean_p80_evaluation, Mean_p90_evaluation,Mean_p100_evaluation]
Av_ABAC = [Mean_p10_total, Mean_p20_total, Mean_p30_total, Mean_p40_total, Mean_p50_total, Mean_p60_total, Mean_p70_total, Mean_p80_total, Mean_p90_total,Mean_p100_total]

err_Policy =[err_p10_evaluation, err_p20_evaluation, err_p30_evaluation, err_p40_evaluation, err_p50_evaluation, err_p60_evaluation, err_p70_evaluation, err_p80_evaluation, err_p90_evaluation, err_p100_evaluation]
err_ABAC =[err_p10_total, err_p20_total, err_p30_total, err_p40_total, err_p50_total, err_p60_total, err_p70_total, err_p80_total, err_p90_total, err_p100_total]


x =[1,2,3,4,5,6,7,8,9,10]
labels= ['10', '20','30','40','50','60','70','80','90','100']
plt.rc('xtick', labelsize=8) 
plt.rc('ytick', labelsize=10)

fig, ax = plt.subplots()

#kwargs = dict(capsize=2, elinewidth=1.5, linewidth=1, ms=12)
ax.bar(x, Av_ABAC, yerr=err_ABAC, label='ABAC total')
ax.bar(x, Av_Policy, label='Policy evaluation' )
#ax.bar(x, Av_Policy, yerr=err_Policy, label='Policy evaluation' )


#ax.bar([1,2,3,4,12,14], P_Policy,  color='olivedrab', label='Policy evaluation', label='Permit')
#ax.bar([5,6,7,8,9,10,11,13,15], D_Policy, color='orangered', ecolor='orange', label='Denial' )
#ax.bar(x, AvTotal, 35, yerr=errTotal, color='grey', label='Total')
ax.legend(loc='best', frameon=True, fontsize=12)
ax.set_xlabel('Number of requests', fontsize=12)
ax.set_ylabel('Time (ms)', fontsize=12)
ax.set_xticks(x)
ax.set_xticklabels(labels)
#ax.set_xticks('S1', 'S2','S3','S4','S5','S6','S7','S8','S9','S10','S11','S12','S13','S14','S15')
plotfile = 'ParallelBarclientabac.pdf'
pp = PdfPages(plotfile)
pp.savefig()
pp.close()
plt.show()
plt.clf()
plt.cla()
plt.close()














# #Boxplot 

# s1_totalI = list(map(int, p10_total))
# s2_totalI = list(map(int, p20_total))
# s3_totalI = list(map(int, p30_total))
# s4_totalI = list(map(int, p40_total))
# s5_totalI = list(map(int, p50_total))
# s6_totalI = list(map(int, p60_total))
# s7_totalI = list(map(int, p70_total))
# s8_totalI = list(map(int, p80_total))
# print(s8_totalI)
# s9_totalI = list(map(int, p90_total))
# s10_totalI = list(map(int, p100_total))

# # s1_totalI = [x/1000 for x in s1_totalI]
# # s2_totalI = [x/1000 for x in s2_totalI]
# # s3_totalI = [x/1000 for x in s3_totalI]
# # s4_totalI = [x/1000 for x in s4_totalI]
# # s5_totalI = [x/1000 for x in s5_totalI]
# # s6_totalI = [x/1000 for x in s6_totalI]
# # s7_totalI = [x/1000 for x in s7_totalI]
# # s8_totalI = [x/1000 for x in s8_totalI]
# # s9_totalI = [x/1000 for x in s9_totalI]
# # s10_totalI = [x/1000 for x in s10_totalI]


# # plt.rc('xtick', labelsize=10) 
# # plt.rc('ytick', labelsize=10)
# fig, bplot = plt.subplots()
# data = [s1_totalI, s2_totalI, s3_totalI, s4_totalI, s5_totalI, s6_totalI, s7_totalI, s8_totalI, s9_totalI, s10_totalI[::2]] 
# #print(data)
# #colors = ['olivedrab', 'olivedrab', 'olivedrab', 'olivedrab', 'orangered', 'orangered', 'orangered', 'orangered', 'orangered', 'orangered']
# bplot= plt.boxplot(data, 0, '', labels=('10', '20','30','40','50','60','70','80','90','100'), patch_artist=True)
# #print(bplot['boxes'])
# #plt.xticks(rotation=45, fontsize=10)
# #plt.rc('ytick', labelsize=10)
# #for patch, color in zip(bplot['boxes'], colors):
# #	patch.set_facecolor(color)
# #plt.grid(True)
# #plt.grid(True, linestyle='-', which='major', color='lightgrey', alpha=0.5)	
# # ax.legend(loc='best', frameon=True, fontsize=12)
# #fig.legend([['olivedrab'][0], ['orangered'][0]], ['Permit', 'Deny'])
# plt.xlabel('Number of simultaneous requests', fontsize=12)
# plt.ylabel('Time (ms)', fontsize=12)
# plotfile = 'parallelboxplotclient.pdf'
# pp = PdfPages(plotfile)
# pp.savefig()
# pp.close()
# plt.show()
# plt.clf()
# plt.cla()
# plt.close()
