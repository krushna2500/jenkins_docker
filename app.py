import pandas as pd
import numpy as np
import streamlit as st

input = st.text_input("Enter your name")


if st.button('submit'):
    st.write(input)

