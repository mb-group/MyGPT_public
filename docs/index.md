
<!-- make div and show logo in middle -->
<div align="center" style='padding:20px;'>
    <img src='./images/mygpt_logo_color.png' width='200px' alt='MyGPT logo'>
</div>

# MyGPT_public

<b>Note:</b> This repository contains installation instructions for the MyGPT with Docker images and will not need source code. If you need access to MyGPT source to help in development process, please contact Jaimin Patel (Email: jaimin.patel@stjude.org) or appropriate person.</b>

<b> Note2:</b> This repository is for public use and will not contain any private information. If you need access to private repository, please contact Jaimin Patel

ChatGPT has revolutionized creative occupations, but tasks requiring factual backing suffer from generalized models and limitations such as hallucinations and inconsistency. Here, we present MyGPT — an open-source Large Language Model (LLM) pipeline to ask questions for content from a curated list of publications or video/audio lectures. MyGPT minimizes hallucination by providing a context for the question and generates accurate answers with source citing. MyGPT can run on personal devices or cloud infrastructures and can help with complex tasks such as literature review and learning. 

## Pipeline

<img src='./images/pipeline.png' width='800px' alt='MyGPT pipeline'>

We have divided the MyGPT pipeline architecture into three sections: 
1. <ins>User interface (UI)</ins>: The UI is the front-end of the pipeline. It is a web application that allows users to interact with the pipeline. The UI is built using ReactJS.
2. <ins>Backend server</ins>: The backend server is responsible for handling requests from the UI and sending them to the LLM server. The backend server is built using Python Django.
3. <ins>LLM server</ins>: The LLM server is responsible for generating answers to the questions asked by the user. We are using Ollama for the LLM server.

## Issues

If you come across any bug or error, please report it in the [issues](https://github.com/mb-group/MyGPT_public/issues) section.
