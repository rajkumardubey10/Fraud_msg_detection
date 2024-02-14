import streamlit as st
import re
import pickle
import string
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize,sent_tokenize
import nltk
from nltk.stem import WordNetLemmatizer
from nltk.stem.porter import PorterStemmer

ps = PorterStemmer()

stop_words = set(stopwords.words('english'))

# Function for text preprocessing
def preprocess_text(text):
    # Lowercasing
    text = text.lower()
    # Remove HTML tags
    text = re.sub('<.*?>', '', text)
    # Remove URLs
    text = re.sub(r'http\S+', '', text)
    # Remove punctuation
    text = re.sub(r'[^\w\s]', '', text)
    # Tokenization
    tokens = word_tokenize(text)
    # Remove stopwords
    tokens = [word for word in tokens if word not in stop_words]
    # Lemmatization
    lemmatizer = WordNetLemmatizer()
    tokens = [lemmatizer.lemmatize(word) for word in tokens if not word in stopwords.words('english')]
    # Join tokens to form processed text
    processed_text = ' '.join(tokens)
    return processed_text

tfidf = pickle.load(open('TFIDF_vectorizer.pkl','rb'))
model = pickle.load(open('model_built.pkl','rb'))

st.title("Fraud Message Detection Classifier Model")

input_sms = st.text_area("Enter the message")

if st.button('Predict'):

    # 1. preprocess
    transformed_sms = preprocess_text(input_sms)
    # 2. vectorize
    vector_input = tfidf.transform([transformed_sms])
    # 3. predict
    result = model.predict(vector_input)[0]
    # 4. Display
    if result == 1:
        st.header("Fraud Message")
    else:
        st.header("Genuine Message")