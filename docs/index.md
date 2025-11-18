
<!-- make div and show logo in middle -->
<div align="center" style='padding:20px;'>
    <img src='./img/mygpt_logo_color.png' width='200px' alt='MyGPT logo'>
</div>

# MyGPT

ChatGPT has revolutionized creative occupations, but tasks requiring factual backing suffer from generalized models and limitations such as hallucinations and inconsistency. Here, we present MyGPT — an open-source Large Language Model (LLM) pipeline to ask questions for content from a curated list of publications or video/audio lectures. MyGPT minimizes hallucination by providing a context for the question and generates accurate answers with source citing. MyGPT can run on personal devices or cloud infrastructures and can help with complex tasks such as literature review and learning. 

## Pipeline

<img src='./img/pipeline.png' width='800px' alt='MyGPT pipeline'>

We have divided the MyGPT pipeline architecture into three sections: 

1. <ins>User interface (UI)</ins>: The UI is the front-end of the pipeline. It is a web application that allows users to interact with the pipeline. The UI is built using ReactJS.

2. <ins>Backend server</ins>: The backend server is responsible for handling requests from the UI and sending them to the LLM server. The backend server is built using Python Django.

3. <ins>LLM server</ins>: The LLM server is responsible for generating answers to the questions asked by the user. We are using Ollama for the LLM server.

## User Interface
MyGPT user interface will allow users to check the publcation library, ask questions, and get answers. The user interface is built using ReactJS.

Here is an example of the user interface with question, answer, and source citing:

<img src='../img/MyGPT_UI.png' width='1200px' alt='MyGPT user interface'>

## MyGPT MCP Server and Client

MyGPT provides a basic implementation of the Model Context Protocol (MCP) server and client, facilitating integration with other private LLM applications and data sources within the same AI ecosystem. The MyGPT MCP server exposes data from the MyGPT backend using MCP tools, which any third-party MCP client can utilize. Conversely, the MyGPT MCP client enables connections to the MCP server, whether it is running locally or in a private network. This feature allows the client to use private database information as context, in addition to information from documents.

> [!NOTE] 
> To configure the MyGPT MCP server or client, follow the instructions on Readme file in the respective operating system.

<img src="../img/MyGPT_MCP_UI.png?raw=true" width="1200px" alt="MyGPT MCP UI">

<b>MyGPT MCP Client User Interface (UI) and Customization Menu</b> 

## Issues

If you come across any bug or error, please report it in the [issues](https://github.com/mb-group/MyGPT_public/issues) section.
