## Installation

MyGPT can be installed on following environments:

- [Personal Computer](#personal-computer)
- [Server/VM with GPU](#server-or-vm-with-gpu)
- [Cloud services (Azure)](#cloud-services-azure)

### Personal Computer

MyGPT is using Ollama for LLM server, and it requires at least 8GB (16GB for better response time) of RAM and 10GB of disk space.
Also, Ollama is providing direct installation on Mac and Linux only. For Windows users we will use Docker to run Ollama.

To run the pipleine on following environments, follow the instructions:
* Mac
	- [Basic Installation](./installation/macOS/README.md)
	
* Linux
	- [Basic Installation](./installation/linux/README.md)
	
* Windows 
	- [Basic Installation](./installation/windows/README.md)

	These instructions are simple and easy to follow. You can also modify bash scripts as per your convenience.

### Server or VM with GPU

MyGPT can be hosted on a server or VM with GPU. For this installation we recommand to host User interface (UI), Backend server and Ollama (LLM server) on 3 seperate VMs. The Ollama VM should have a GPU with CUDA installed on the server/VM.

To run the pipleine on VM/Server, follow the instructions:
* [Linux Server Installation](./installation/vm/README.md)

### Cloud services (Azure)

MyGPT can be hosted on any cloud service but we are providing Azure as an example deploymnet. For this installation we recommand to host User interface (UI), Backend server and Ollama (LLM server) on 3 seperate VMs. The Ollama VM should have a GPU with CUDA installed on the VM.

To run the pipleine on Azure, follow the instructions:
* [Azure Installation](./installation/azure/README.md)

## User Interface
MyGPT user interface will allow users to check the publcation library, ask questions, and get answers. The user interface is built using ReactJS.

Here is an example of the user interface with question, answer, and source citing:

<img src='./images/MyGPT_UI.png' width='800px' alt='MyGPT user interface'>

## MyGPT MCP Server and Client

MyGPT provides a basic implementation of the Model Context Protocol (MCP) server and client, facilitating integration with other private LLM applications and data sources within the same AI ecosystem. The MyGPT MCP server exposes data from the MyGPT backend using MCP tools, which any third-party MCP client can utilize. Conversely, the MyGPT MCP client enables connections to the MCP server, whether it is running locally or in a private network. This feature allows the client to use private database information as context, in addition to information from documents.

> [!NOTE] 
> To configure the MyGPT MCP server or client, follow the instructions on Readme file in the respective operating system.

<img src="./images/MyGPT_MCP_UI.png?raw=true" width="1000px" alt="MyGPT MCP UI">

<b>MyGPT MCP Client User Interface (UI) and Customization Menu</b> 