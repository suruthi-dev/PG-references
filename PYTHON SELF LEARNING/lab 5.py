
# coding: utf-8

# 1.Write a function find_average(student) that takes student tuple as input and 
# print student rollno, name, marks and average marks as output.

# In[38]:


def find_average(student):
    
    rollno,name,marks=student
    m1,m2,m3=marks
       
    avg=(m1+m2+m3)/3
    print("\n roll no", rollno,"\n name",name,"\n avg",round(avg))
    


# In[39]:


stud1=(1,"rex",(60,85,70))
find_average(stud1)


# In[40]:


stud2 = (2, 'rex', (80, 75, 90))
find_average(stud2)


# 2.Write a weight management program that prompts the user to enter in 7 days of their body 
# weight values as float numbers. Store them in list. Then print first day weight, last day 
# weight, 4th day weight, highest weight, lowest weight and average weight. Finally, print if 
# average weight < lowest weight, then print “Your weight management is excellent”. 
# Otherwise print “Your weight management is not good. Please take care of your diet”.

# In[7]:


def weightmanagement(value):
    days=[]
    for i in range(1,8):
        day=float(input(f"\n ENTER THE WEIGHT OF DAY{[i]}"))
        days.append(day)
        
    print("\nDAY 1 WEIGHT =",days[0])
    print("\nDAY 7 WEIGHT =",days[6])
    print("\nDAY 4 WEIGHT =",days[3])
    print("\nHIGHEST WEIGHT =",max(days))
    print("\nLOWEST WEIGHT =",min(days))
    print("\nAVERAGE WEIGHT =",(round(sum(days)/len(days))))
    avgwgt=round(sum(days)/len(days))
    lowwgt=min(days)
    if(avgwgt<lowwgt):
        print("Your weight management is excellent")
    else:
        print("Your weight management is not good. Please take care of your diet")


# In[8]:


weightmanagement(7)


# 3.Write a function lastN(lst, n) that takes a list of integers and n and returns n 
# largest numbers

# In[22]:


def lastN(lst,n):
    lst=[]
    n=int(input("HOW MANY NUMBERS  YOU WANT TO ENTER :"))
    for i in range(n):
        a=int(input("\n ENTER A NUMBER :"))
        lst.append(a)
    disp=int(input("HOW MANY LARGEST NUMBERS YOU WANT TO FIND"))
    lst.sort()
    lst.reverse()
    print("LARGEST NUMBERS ARE : ",lst[:disp])
        


# In[23]:


lastN(6,3)

