import numpy as np
import pandas as pd
import streamlit as st

input = st.text_input("Enter name")


if st.button("submit"):
    st.write(input)
