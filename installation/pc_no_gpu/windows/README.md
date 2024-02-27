# Installation on Windows without GPU

## Requirements

To Run the MyGPT pipeline, we will need the following minimum specifications for your system:

*   8 CPUs
*   16 GB Memory
*   20 GB hard-drive storage

We will also need several tools to run the pipeline:

*   Python
*   Choco
*   Git
*   Rust
*   aria2
*   Docker

## Requirements installation

We will install these two tools in the following steps:

1. **Python installation**

	Check if you have `python` installed on your system by running following command.

	```
	python --version
	```

	If python is not isntalled on your PC, install it by downloading latest release from this page: https://www.python.org/downloads/windows/
     
    While Python installtion, make sure to select the following option:
    <img src="https://github.com/mb-group/MyGPT_public/blob/main/images/python_install_windows.png?raw=true" width="700px">

2. **Chocolatory installation**

	First open Command Prompot as Administrator and locate your desired folder or Desktop. To open Command Prompt as Administrator check this guide: https://www.howtogeek.com/194041/how-to-open-the-command-prompt-as-administrator-in-windows-10/

	Check if you have `choco` installed on your system by running following command.

	```
	choco --version
	```

	If you get error that `choco not found`, you can install `choco` by folliwng
	command from the new Command Prompt window (similar to Jupyter installation but open new tab for Command Prompt without closing existing window that's running Jupyter). For more details about brew check this [page](https://docs.chocolatey.org/en-us/choco/setup#install-with-cmd.exe)

	```
	@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
	```

2.  **Chocolatory packages installation**

	We will install Chocolatory packages by running following commands:

	```
	choco install git rust aria2 -y
	```

3. **Docker installation**

	To run MyGPT with CPUs-only, the entire pipeline will run as a single unit from Docker.
	Check if you have `docker` installed on your system by running following command.

	```
	docker --version
	```

	If you get an error that `docker not found`, go to the official Docker installation page for Mac and install the appropriate Docker on your system: https://docs.docker.com/desktop/install/mac-install/

	<u>Troubleshoot help:</u> if you get error `Docker desktop requires a newer WSL kernel version on Windows`, go to this post to fix it: https://medium.com/@dilsharahasanka/solved-docker-desktop-requires-a-newer-wsl-kernel-version-on-windows-b093b1684c0b
	
	You can change Docker setting to match requirements for MyGPT:
	<img src="https://github.com/mb-group/MyGPT_public/blob/main/images/docker_resources.png?raw=true" width="700px">

## MyGPT installation

1. **Get MyGPT source code**

	If you have zip file with MyGPT source code, you can unzip it and copy it on your desktop or your desired location. You can skip remaining step from below and go to Step 2.

	If you want to get source code from GitHub we will first get MyGPT source code by running following command. It will create `MyGPT` folder on your Desktop. To get the source code from GitHub, we will need `GitHub username` and `GitHub access token` as the GitHub repo is private. When you run the following command, it will ask for this credentials.

	<u>Note:</u> If you don't have GitHub access token, you can genearte classic token using this guideline: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic

	```
	git clone https://github.com/mb-group/MyGPT.git
	```

2. **Download the LLM model and modify setting files**

	We will run following script to download the LLM model and modify the setting files:

	```
	bash MyGPT/installation/pc_no_gpu/macOS/set_environment.sh
	```

3. **Build docker images**

	We will run following script to build docker images:

	```
	bash MyGPT/installation/pc_no_gpu/macOS/build_docker.sh
	```

4. **Run docker containers**

	We will run following script to run docker containers:

	```
	bash MyGPT/installation/pc_no_gpu/macOS/run_docker.sh
	```

	This script should take around 5-10 minutes to run.
	While above script is running, it will open several pages in your default browser. 
	You can see status of different components of MyGPT pipeline on these pages.
	* backend: http://localhost:8000/

		<img src="https://github.com/mb-group/MyGPT_public/blob/main/images/backend_server.png?raw=true" width="600px">

	* llama: http://localhost/

		<img src="https://github.com/mb-group/MyGPT_public/blob/main/images/llm_api_server.png?raw=true" width="600px">

	* frontend: http://localhost:3000/

		<img src="https://github.com/mb-group/MyGPT_public/blob/main/images/frontend_launch.png?raw=true" width="600px">


## MyGPT pipeline usage

### **Upload publications**

* You can upload publication PDFs from backend page: http://localhost:8000/

* You have to define "Library Name" before uploading publication PDFs. You can use same Library Name if you are uploading to same library. If you want to upload to different library, you have to define new Library Name.

* You can upload 15 PDFs at a time. You can upload multiple times to same library.

	<img src="https://github.com/mb-group/MyGPT_public/blob/main/images/backend_server.png?raw=true" width="600px">

### **Add Zotero library**

* To setup Zotero account, you need to create Zotero account and generate API key. You can generate an API key in your profile settings https://www.zotero.org/settings/keys

* Once you genearte the key, add that key into `backend/env_example` for `ZOTERO_API_KEY` variable. 

* After that, if you are running MyGPT pipeline stop it with the script below:

	```
	bash MyGPT/installation/pc_no_gpu/macOS/stop_docker.sh
	```

* After that, you have to follow steps 2 to 4 from installtion to run MyGPT pipeline again. 

Now, you can add Zotero library from same backend page: http://localhost:8000/

* We will need Zotero Group ID and Zotero Collection ID. 
You can get it from URL of the library, for example, here is URL for GPCR library:
https://www.zotero.org/groups/4982570/babu_group/collections/YTPMLXYY

* In above URL, `4982570` is Zotero Group ID and `YTPMLXYY` is Zotero Collection ID.

## Other optional tasks for MyGPT pipeline

### create super user

To create super user, run following command:

```
bash MyGPT/installation/pc_no_gpu/macOS/create_superuser.sh
```
You can check backend database at http://localhost:8000/admin/ with username and password you created in above step.

### stop docker containers

To stop docker containers, run following command:

```
bash MyGPT/installation/pc_no_gpu/macOS/stop_docker.sh
```