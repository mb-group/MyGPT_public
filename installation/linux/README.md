# Installation on Linux without GPU

## Requirements

This readme is an example for a Linux with Ubuntu platform. Only difference between Ubuntu and other platform is how packages are installed, for example, we will be using `apt` in this readme but you can use your own installer like `dnf` or `pacman` as per your Linux platform.

To Run the MyGPT pipeline, we will need the following minimum specifications for your system:

*   8 CPUs
*   8 GB Memory (16 GB or more for better response time)
*   10 GB hard-drive storage

We will also need several tools to run the pipeline:

*   Apt
*   Git
*   Docker
*   Ollama

## Requirements installation

We will install these two tools in the following steps:

1. **Brew installation**

	Check if you have `apt` installed on your system by running following command.

	```
	apt --help
	```

	If you get error that apt not found, you can check what package manager your platform is using as default. Some of the default package managers for Linux system are dnf, yum and pacman. If you have any of these package managers, you might want to edit the commands in the cell below according to your needs. We will be using these package manager to install Git, Docker and aira2.

2.  **Brew packages installation**

	We will install Brew packages by running following commands:

	```
	sudo apt install git
	```

3. **Docker installation**

	To run MyGPT with CPUs-only, the entire pipeline will run as a single unit from Docker.
	Check if you have `docker` installed on your system by running following command.

	```
	docker --version
	```

	If you get an error that `docker not found`,   Go to the official Docker installation page for Linux and install the appropriate Docker on your system: https://docs.docker.com/desktop/install/linux-install/

	You can change Docker setting to match requirements for MyGPT:
	<img src="https://github.com/mb-group/MyGPT_public/blob/main/images/docker_resources.png?raw=true" width="700px">

4. **Ollama installation**

	Finally, download and install Ollama by following instructions from this offical [Ollama site](https://ollama.ai/)

	After installation, you can run following command in Terminal to start Ollama server, if you haven't done it already:

	```
	sudo systemctl start ollama
	```

	You can check if Ollama is running by visiting http://localhost:11434/ in your default browser.

	Once you start Ollama, you have to pull Lllama2 model by running following command:

	```
	ollama pull llama2
	```

## MyGPT installation


1. **Get MyGPT source code**

	If you have zip file with MyGPT source code, you can unzip it and copy it on your desktop or your desired location. You can skip remaining instructions from below and go to Step 2.

	If you want to get source code from GitHub we will first get MyGPT source code by running following command. It will create `MyGPT` folder on your Desktop. To get the source code from GitHub, we will need `GitHub username` and `GitHub access token` as the GitHub repo is private. When you run the following command, it will ask for this credentials.

	```
	git clone https://github.com/mb-group/MyGPT_public.git
	```

	<u>Note:</u> If you don't have GitHub access token, you can genearte classic token using this guideline: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic

2. login to GitHub Docker registry

	As the GitHub repository is private rightnow, we have to login to GitHub Docker registry to use the prebuilt images. To login to GitHub Docker registry, run following command. It will ask for your GitHub username and password. 
	<u> Caution: the password is your access token (same token you used in step 1), not your github password you use to login in github account. </u>

	```
	sudo docker login ghcr.io
	```

3. **Run docker containers**

	We will run following script to run docker containers:

	```
	cd MyGPT_public/installation/linux
	sudo sh run_docker.sh
	```

	This script should take around 5-10 minutes to run.
	While above script is running, it will open several pages in your default browser. 
	You can see status of different components of MyGPT pipeline on these pages.
	* backend: http://localhost:8000/

		<img src="../../images/backend_server.png?raw=true" width="500px">

	* frontend: http://localhost:3000/

		<img src="../../images/frontend_launch.png?raw=true" width="1200px">


## MyGPT pipeline usage

### **Upload publications**

* You can upload documents or publications as PDF file by going to the settings, and selecting first tab: "Publication libraries" and selecting "Upload documents" menu as screeshot below.

* start by giving your library a "Library Name" and start uploading documents.

* You can upload upto 40 PDFs at a time. You can upload multiple times to same library. It will take some time to process the documents and once it's done, you can see your new library in the list with success message.

	<img src="../../images/MyGPT_upload_menu.png?raw=true" width="800px">

### **Add Zotero library**

* You can add Zotero library by going to the settings, and selecting first tab: "Publication libraries" and selecting "Add Zotero library" menu as screeshot below.

* You must provide Zotero AI key, Zotero Group ID/User ID, and Zotero Collection ID to add Zotero library.

* If you need help getting any of these, you can click on the help button next to the input field or check section after screenshot.

	<img src="../../images/MyGPT_zotero_menu.png?raw=true" width="800px">

* <u>Zotero API key:</u> You can generate an API key in your profile settings https://www.zotero.org/settings/keys

* <u>Zotero User ID:</u> You can get it from Zotero prfile page by visiting https://www.zotero.org/settings/keys. It's 6-7 digit number.

* <u>Zotero Group ID:</u> You can get it from URL of the group, for example, here is URL for BABU group and group ID is `4982570`: 
https://www.zotero.org/groups/4982570/babu_group/

* <u>Zotero Collection ID:</u> You can get it from URL of the collection, for example, here is URL for BABU group and collection ID is `YTPMLXYY`:
https://www.zotero.org/groups/4982570/babu_group/collections/YTPMLXYY

## Other optional tasks for MyGPT pipeline

### create super user

To create super user, run following command:

```
sudo sh create_superuser.sh
```
You can check backend database at http://localhost:8000/admin/ with username and password you created in above step.

### stop docker containers

To stop docker containers, run following command:

```
sudo sh stop_docker.sh
```