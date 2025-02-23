#!/usr/bin/env python
# coding: utf-8

# # SURUTHI S
# 
# # 225229141
# 
# #  CW_02- Array Slicing 

# 1 . Create array with range 0-9

# importing numpy library as np
# creating an array using arange method which Return evenly spaced values within a given interval(here from 0 to 9)

# In[12]:


import numpy as np


# In[13]:


arr = np.arange(10)


# In[14]:


arr


# 2 . Slice the array from index 5-8

# Slicing the array from index 5-8 using square brackets

# In[15]:


arr[5:8]


# 3 . Change sliced array values as 12

#  Changing sliced array values to 12 using assignment operator (=)

# In[16]:


arr[5:8] = 12


# 4 . Print origin array

# Printing origin array

# In[17]:


arr


# 5. Change sliced array index 1's value as 12345

# Changing sliced array index 1 as 12345 using assignment operator (=)

# In[18]:


arr[1] = 12345


# 6 . Print origin array

# Printing origin array

# In[19]:


print(arr)


# In[ ]:




