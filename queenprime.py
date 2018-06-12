import math
a=100000;
#input("Enter a no and wait for some time:")
a=int(a)
dic={'1':1}
for i in range(2,a):
 dic[i]=1
for j in range(2,math.floor(math.sqrt(a))):
 if dic[j]==1:
  for k in range(j+1,a):
   if k%j==0:
    dic[k]=0
for i in range(2,a):
 if(dic[i]==1):
  print(i)
