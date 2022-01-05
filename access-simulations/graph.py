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



json_file = json.load(open("simulation-times.json","r"))



s1_evaluation = json_file["s1-times.txt"]["evaluation"]
s1_total = json_file["s1-times.txt"]["total"]




s2_evaluation = json_file["s2-times.txt"]["evaluation"]
s2_total = json_file["s2-times.txt"]["total"]

s3_evaluation = json_file["s3-times.txt"]["evaluation"]
s3_total = json_file["s3-times.txt"]["total"]

s4_evaluation = json_file["s4-times.txt"]["evaluation"]
s4_total = json_file["s4-times.txt"]["total"]

s5_evaluation = json_file["s5-times.txt"]["evaluation"]
s5_total = json_file["s5-times.txt"]["total"]
##print(s5_evaluation)

s6_evaluation = json_file["s6-times.txt"]["evaluation"]
s6_total = json_file["s6-times.txt"]["total"]

s7_evaluation = json_file["s7-times.txt"]["evaluation"]
s7_total = json_file["s7-times.txt"]["total"]

s8_evaluation = json_file["s8-times.txt"]["evaluation"]
s8_total = json_file["s8-times.txt"]["total"]

s9_evaluation = json_file["s9-times.txt"]["evaluation"]
s9_total = json_file["s9-times.txt"]["total"]

s10_evaluation = json_file["s10-times.txt"]["evaluation"]
s10_total = json_file["s10-times.txt"]["total"]

s11_evaluation = json_file["s11-times.txt"]["evaluation"]
s11_total = json_file["s11-times.txt"]["total"]

s12_evaluation = json_file["s12-times.txt"]["evaluation"]
s12_total = json_file["s12-times.txt"]["total"]

s13_evaluation = json_file["s13-times.txt"]["evaluation"]
s13_total = json_file["s13-times.txt"]["total"]

s14_evaluation = json_file["s14-times.txt"]["evaluation"]
s14_total = json_file["s14-times.txt"]["total"]

s15_evaluation = json_file["s15-times.txt"]["evaluation"]
s15_total = json_file["s15-times.txt"]["total"]


s = stats.Statistics()

Mean_s1_total = s.getMean(s1_total)
Mean_s1_evaluation = s.getMean(s1_evaluation)

err_s1_total = s.getConfidenceInterval(s1_total)
err_s1_evaluation = s.getConfidenceInterval(s1_evaluation)

Mean_s2_total = s.getMean(s2_total)
Mean_s2_evaluation = s.getMean(s2_evaluation)

err_s2_total = s.getConfidenceInterval(s2_total)
err_s2_evaluation = s.getConfidenceInterval(s2_evaluation)

Mean_s3_total = s.getMean(s3_total)
Mean_s3_evaluation = s.getMean(s3_evaluation)

err_s3_total = s.getConfidenceInterval(s3_total)
err_s3_evaluation = s.getConfidenceInterval(s3_evaluation)

Mean_s4_total = s.getMean(s4_total)
Mean_s4_evaluation = s.getMean(s4_evaluation)

err_s4_total = s.getConfidenceInterval(s4_total)
err_s4_evaluation = s.getConfidenceInterval(s4_evaluation)

# print(Mean_s4_evaluation)
# print(Mean_s4_total)

Mean_s5_total = s.getMean(s5_total)
Mean_s5_evaluation = s.getMean(s5_evaluation)

err_s5_total = s.getConfidenceInterval(s5_total)
err_s5_evaluation = s.getConfidenceInterval(s5_evaluation)

# print(Mean_s5_evaluation)
# print(Mean_s5_total)

Mean_s6_total = s.getMean(s6_total)
Mean_s6_evaluation = s.getMean(s6_evaluation)

err_s6_total = s.getConfidenceInterval(s6_total)
err_s6_evaluation = s.getConfidenceInterval(s6_evaluation)

Mean_s7_total = s.getMean(s7_total)
Mean_s7_evaluation = s.getMean(s7_evaluation)

err_s7_total = s.getConfidenceInterval(s7_total)
err_s7_evaluation = s.getConfidenceInterval(s7_evaluation)

Mean_s8_total = s.getMean(s8_total)
Mean_s8_evaluation = s.getMean(s8_evaluation)

err_s8_total = s.getConfidenceInterval(s8_total)
err_s8_evaluation = s.getConfidenceInterval(s8_evaluation)

Mean_s9_total = s.getMean(s9_total)
Mean_s9_evaluation = s.getMean(s9_evaluation)

err_s9_total = s.getConfidenceInterval(s9_total)
err_s9_evaluation = s.getConfidenceInterval(s9_evaluation)

Mean_s10_total = s.getMean(s10_total)
Mean_s10_evaluation = s.getMean(s10_evaluation)

err_s10_total = s.getConfidenceInterval(s10_total)
err_s10_evaluation = s.getConfidenceInterval(s10_evaluation)

Mean_s11_total = s.getMean(s11_total)
Mean_s11_evaluation = s.getMean(s11_evaluation)

err_s11_total = s.getConfidenceInterval(s11_total)
err_s11_evaluation = s.getConfidenceInterval(s11_evaluation)

Mean_s12_total = s.getMean(s12_total)
Mean_s12_evaluation = s.getMean(s12_evaluation)

err_s12_total = s.getConfidenceInterval(s12_total)
err_s12_evaluation = s.getConfidenceInterval(s12_evaluation)

Mean_s13_total = s.getMean(s13_total)
Mean_s13_evaluation = s.getMean(s13_evaluation)

err_s13_total = s.getConfidenceInterval(s13_total)
err_s13_evaluation = s.getConfidenceInterval(s13_evaluation)

Mean_s14_total = s.getMean(s14_total)
Mean_s14_evaluation = s.getMean(s14_evaluation)

err_s14_total = s.getConfidenceInterval(s14_total)
err_s14_evaluation = s.getConfidenceInterval(s14_evaluation)

Mean_s15_total = s.getMean(s15_total)
Mean_s15_evaluation = s.getMean(s15_evaluation)

err_s15_total = s.getConfidenceInterval(s15_total)
err_s15_evaluation = s.getConfidenceInterval(s15_evaluation)



Av_Policy = [Mean_s1_evaluation, Mean_s2_evaluation, Mean_s3_evaluation, Mean_s4_evaluation, Mean_s5_evaluation, Mean_s6_evaluation, Mean_s7_evaluation, Mean_s8_evaluation, Mean_s9_evaluation,Mean_s10_evaluation,Mean_s11_evaluation,Mean_s12_evaluation,Mean_s13_evaluation,Mean_s14_evaluation,Mean_s15_evaluation]
Av_ABAC =[Mean_s1_total, Mean_s2_total, Mean_s3_total, Mean_s4_total, Mean_s5_total, Mean_s6_total, Mean_s7_total, Mean_s8_total, Mean_s9_total,Mean_s10_total,Mean_s11_total,Mean_s12_total,Mean_s13_total,Mean_s14_total,Mean_s15_total]

Permit=[Mean_s1_total, Mean_s2_total, Mean_s3_total, Mean_s4_total,Mean_s12_total,Mean_s14_total]
Denial=[Mean_s5_total, Mean_s6_total, Mean_s7_total, Mean_s8_total, Mean_s9_total,Mean_s10_total,Mean_s11_total, Mean_s13_total, Mean_s15_total]

err_Policy =[err_s1_evaluation, err_s2_evaluation, err_s3_evaluation, err_s4_evaluation, err_s5_evaluation, err_s6_evaluation, err_s7_evaluation, err_s8_evaluation, err_s9_evaluation, err_s10_evaluation, err_s11_evaluation, err_s12_evaluation, err_s13_evaluation, err_s14_evaluation, err_s15_evaluation]

err_ABAC =[err_s1_total, err_s2_total, err_s3_total, err_s4_total, err_s5_total, err_s6_total, err_s7_total, err_s8_total, err_s9_total, err_s10_total, err_s11_total, err_s12_total, err_s13_total, err_s14_total, err_s15_total]

errPermit = [err_s1_total, err_s2_total, err_s3_total, err_s4_total,err_s12_total, err_s14_total]
errDenial = [ err_s5_total, err_s6_total, err_s7_total, err_s8_total, err_s9_total, err_s10_total, err_s11_total, err_s13_total, err_s15_total]


# print(Mean_s2_total)
# print(Mean_s2_evaluation)
# print(err_s2_total)
# print(err_s2_evaluation)


# x =[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
# labels= ['S1', 'S2','S3','S4','S5','S6','S7','S8','S9','S10','S11','S12*','S13*','S14*','S15*']
# plt.rc('xtick', labelsize=8) 
# plt.rc('ytick', labelsize=10)

# fig, ax = plt.subplots()

# #kwargs = dict(capsize=2, elinewidth=1.5, linewidth=1, ms=12)
# ax.bar([1,2,3,4,12,14], Permit, yerr=errPermit, color='olivedrab', label='Permit')
# ax.bar([5,6,7,8,9,10,11,13,15], Denial, yerr=errDenial,  color='orangered', label='Denial')

# #ax.bar(x, Av_Policy, yerr=err_Policy, color='orange', label='Policy evaluation')
# #ax.bar(x, Av_Policy, yerr=err_Policy, color='orange', ecolor='orange', label='Policy evalution')
# #ax.bar(x, AvTotal, 35, yerr=errTotal, color='grey', label='Total')
# ax.legend(loc='best', frameon=True, fontsize=12)
# ax.set_xlabel('Scenarios', fontsize=12)
# ax.set_ylabel('Time (ms)', fontsize=12)
# ax.set_xticks(x)
# ax.set_xticklabels(labels)
# #ax.set_xticks('S1', 'S2','S3','S4','S5','S6','S7','S8','S9','S10','S11','S12*','S13*','S14*','15*')
# plotfile = 'performance.pdf'
# pp = PdfPages(plotfile)
# pp.savefig()
# pp.close()
# plt.show()
# plt.clf()
# plt.cla()
# plt.close()

s1_totalI = list(map(int, s1_total))
s2_totalI = list(map(int, s2_total))
s3_totalI = list(map(int, s3_total))
s4_totalI = list(map(int, s4_total))
s5_totalI = list(map(int, s5_total))
s6_totalI = list(map(int, s6_total))
s7_totalI = list(map(int, s7_total))
s8_totalI = list(map(int, s8_total))
s9_totalI = list(map(int, s9_total))
s10_totalI = list(map(int, s10_total))
s11_totalI = list(map(int, s11_total))
s12_totalI = list(map(int, s12_total))
s13_totalI = list(map(int, s13_total))
s14_totalI = list(map(int, s14_total))
s15_totalI = list(map(int, s15_total))

# plt.rc('xtick', labelsize=10) 
# plt.rc('ytick', labelsize=10)
fig, bplot = plt.subplots()
data = [s1_totalI, s2_totalI, s3_totalI, s4_totalI, s5_totalI, s6_totalI, s7_totalI, s8_totalI, s9_totalI, s10_totalI, s11_totalI, s12_totalI, s13_totalI, s14_totalI, s15_totalI[::2]] 
colors = ['olivedrab', 'olivedrab', 'olivedrab', 'olivedrab', 'orangered', 'orangered', 'orangered', 'orangered', 'orangered', 'orangered', 'orangered', 'olivedrab', 'orangered', 'olivedrab', 'orangered']
bplot= plt.boxplot(data, 0,  '', labels=('S1', 'S2','S3','S4','S5','S6','S7','S8','S9','S10','S11','S12*','S13*','S14*','15*'), patch_artist=True)
print(bplot['boxes'])
#plt.xticks(rotation=45, fontsize=10)
#plt.rc('ytick', labelsize=10)
for patch, color in zip(bplot['boxes'], colors):
	patch.set_facecolor(color)
#plt.grid(True)
#plt.grid(True, linestyle='-', which='major', color='lightgrey', alpha=0.5)	
# ax.legend(loc='best', frameon=True, fontsize=12)
fig.legend([['olivedrab'][0], ['orangered'][0]], ['Permit', 'Deny'])
plt.xlabel('Scenarios', fontsize=12)
plt.ylabel('Time (ms)', fontsize=12)
plotfile = 'performanceboxplot.pdf'
pp = PdfPages(plotfile)
pp.savefig()
pp.close()
plt.show()
plt.clf()
plt.cla()
plt.close()
