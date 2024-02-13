# End to End Fraud Message Detection Model


# Problem Statement :

With the increasing prevalence of fraudulent messages, there is a critical need for a robust machine learning model utilizing Natural Language Processing (NLP) techniques to accurately distinguish between genuine and fraudulent messages. This model aims to empower individuals, especially students and professionals, to identify and mitigate the risk of falling victim to fraudulent schemes while ensuring they do not miss out on important communications such as job placement offers or other significant opportunities. The goal is to develop a highly accurate and scalable solution that can effectively analyze text messages, emails, or other forms of communication to classify them as either genuine or fraudulent, thereby safeguarding individuals from potential scams and preserving the integrity of their personal and professional information.

 ![Python 3.10](https://img.shields.io/badge/Python-3.6-brightgreen.svg) ![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-Library-orange)
![NLP](https://img.shields.io/badge/NLP-Toolkit-green)
![NLTK](https://img.shields.io/badge/NLTK-Toolkit-blue)
![Streamlit](https://img.shields.io/badge/Streamlit-Framework-brightgreen.svg)


# Software And Tools Requirements

1. [Github Account](https://github.com)
2. [Azure Account](https://azure.microsoft.com/en-us/free)
3. [VS Code IDE](https://code.visualstudio.com)
4. [Git CLI](https://git-scm.com/book/en/v2/Getting-Started-The-Command-Line)
## Creat a new environment
```
conda create -p venv python==3.11.4 -y
```
# Demo : 
Videos has to upload yet

# Objective:

### Define the primary objectives of the project, including:
Developing a machine learning model capable of accurately identifying fraudulent messages.
Enhancing the model's robustness to adapt to evolving fraud tactics and variations in message content.
Empowering users, particularly students and professionals, to make informed decisions and avoid falling prey to fraudulent schemes.

### Minimizing False Positives and Increasing Precision Score:
Prioritize reducing false positives, ensuring that genuine messages are not incorrectly classified as fraudulent.
Enhance the precision score of the model to minimize the likelihood of users missing out on important communications due to misclassification.
Implement strategies to fine-tune the model's decision boundaries and optimize its performance in distinguishing between genuine and fraudulent messages, thereby minimizing the potential consequences for students, professionals, and other users.

# Overview :

The project aims to develop a robust machine learning model using Natural Language Processing (NLP) techniques to accurately identify fraudulent messages while minimizing false positives. By prioritizing precision enhancement and false positive reduction, the model seeks to ensure that genuine messages are not mistakenly flagged as fraudulent, thereby preventing users, particularly students and professionals, from missing out on important communications. Through strategic optimization of decision boundaries and model performance, the project aims to empower users to make informed decisions and avoid falling prey to fraudulent schemes, ultimately enhancing security and trust in communication channels.

# Scope :

The project aims to analyze messages across multiple communication channels such as SMS, email, and social media platforms to detect various types of fraudulent activities including phishing scams, job offer fraud, and financial scams. It does not impose geographic or demographic restrictions, making it adaptable to users worldwide. The system is designed to be scalable and adaptable to evolving fraud tactics, ensuring flexibility and usability across diverse scenarios and contexts.

# Methodology:

1. **Data Collection:**
- Gather a diverse dataset comprising both genuine and fraudulent messages from various sources, including emails, SMS, social media, and online platforms.
- Ensure the dataset encompasses a wide range of fraud tactics and message variations to facilitate comprehensive model training and evaluation.

2. **Preprocessing:**
- Clean the text data to remove noise, such as special characters, punctuation, and irrelevant symbols.
Perform text normalization techniques, including lowercasing, stemming, and lemmatization, to standardize the text format and reduce vocabulary redundancy.
- Tokenize the text data into individual words or tokens to enable further analysis and feature extraction.
Conduct feature extraction to transform the textual data into numerical vectors suitable for machine learning algorithms, utilizing techniques such as TF-IDF (Term Frequency-Inverse Document Frequency) or word embeddings like Word2Vec or GloVe.

3. **Model Selection:**
 - Explore a diverse range of machine learning algorithms and NLP techniques suitable for text classification tasks.
 - Utilize algorithms such as decision trees, random forests, support vector machines, logistic regression, naive Bayes, and neural networks.
 - Evaluate each algorithm based on its performance metrics, including accuracy, precision, recall, and F1-score, using appropriate validation techniques such as cross-validation or holdout validation.
 - Prioritize algorithms that exhibit high precision scores to minimize false positives and ensure accurate identification of fraudulent messages.

4. **Model Training:**
  - Select the most promising algorithms identified during the model selection phase for further training.
  - Divide the dataset into training and validation sets, ensuring a balanced distribution of genuine and fraudulent messages in each subset.
  - Train the selected models using the training data, optimizing hyperparameters through techniques such as grid search or random search.
  - Regularize the models to prevent overfitting and improve generalization performance on unseen data.
5. **Evaluation:**
  - Assess the performance of the trained models on the validation set using a range of evaluation metrics, including accuracy, precision, recall, and F1-score.
  - Conduct a comprehensive analysis of model performance across different metrics to identify the top-performing model.
  - Validate the robustness of the selected model through sensitivity analysis and stress testing, evaluating its performance under various scenarios and data distributions.
  - Iterate on the model training and evaluation process as needed to fine-tune the model and achieve optimal performance in accurately detecting fraudulent messages while minimizing false positives.

# Installation :

### Clone the repository:
```
git clone https://github.com/rajkumardubey10/Fraud_msg_detection.git
```

### Navigate to the project directory :
```
cd Fraud_msg_detection
```
### Install the dependencies:
```
pip install -r requirements.txt
```
# Usage :
### Run the Streamlit application :
```
streamlit run app.py
```
Open a web browser and navigate to http://localhost:8501 to access the application.
Paste the text message and click on the "predict" button to receive the output that whether the given input text message is fraudulent or genuine message 

# Tools and Technology :
![Scikit-learn Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Scikit_learn_logo_small.svg/75px-Scikit_learn_logo_small.svg.png)
![Python Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/65px-Python-logo-notext.svg.png)
![Numpy Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/NumPy_logo_2020.svg/75px-NumPy_logo_2020.svg.png)
![Pandas Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Pandas_logo.svg/75px-Pandas_logo.svg.png)

![VSCode Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/65px-Visual_Studio_Code_1.35_icon.svg.png)
![Matplotlib Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Matplotlib_icon.svg/75px-Matplotlib_icon.svg.png)
![Git Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Git-logo.svg/75px-Git-logo.svg.png)
![GitHub Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/75px-Octicons-mark-github.svg.png)

