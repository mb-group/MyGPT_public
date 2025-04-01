# Installation on Windows

## Requirements

To Run the MyGPT pipeline, we will need the following minimum specifications for your system:

*   8 CPUs
*   8 GB Memory (16 GB or more for better response time)
*   10 GB hard-drive storage

We will also need several tools to run the pipeline:

*   Python
*   Chocolatey
*   Git
*   Docker
*   Ollama

Operating system: Windows 10 or later
*   Windows Subsystem for Linux (WSL) is not required, but it is recommended to use WSL2 for better performance and compatibility with Linux-based tools.
*   Windows 11 is recommended for better performance and compatibility with Docker and other tools.
*   Windows 10 is also supported, but some features may not work as expected.
*   Windows 8 or earlier versions are not supported and may not work with the MyGPT pipeline.

## Installation time
The installation of MyGPT pipeline should take around 30-60 minutes depending on your system specifications. The installation time will be longer if you are using a slower internet connection.

## Requirements installation

We will install these two tools in the following steps:

1. **install Python and Pip**

	Check if you have python installed on your system, by running following command from Command Prompt.
	```
	python -v
	```

	If python is not isntalled on your PC, install it by downloading latest release from this page: https://www.python.org/downloads/windows/

	While Python installtion, make sure to select the following option:

	<img src="../../images/python_install_windows.png?raw=true" width="500px">

2. **Chocolatory installation**

	Check if you have choco installed on your system by running following command.
	```
	choco list
	```

	If you get error that `choco not found`, you can install `choco` by folliwng command from the new Command Prompt window:

	```
	@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
	```

3.  **Git installation**

	Check if you have git installed on your system by running following command.

	```
	git --help
	```

	if you get message git not found, you can install it using choco.

	```
	choco install git
	```
	
	After you get success message, you can close the Command Prompt window and open new Command Prompt as Administrator to run next command.

4. **Docker installation**

	To run MyGPT with Windows, the entire pipeline will run as a single unit from Docker. Check if you have `docker` installed on your system by running following command:

	```
	docker --help
	```
	If you get an error that `docker not found`, Go to the official Docker installation page for Windows and install the appropriate Docker on your system: https://docs.docker.com/desktop/install/windows-install/

5. **Ollama installation**

	Finally, download and install Ollama by following instructions from this offical [Ollama site](https://ollama.ai/)

	You can check if Ollama is running by visiting http://localhost:11434/ in your default browser.

> [!CAUTION]
> After installing Ollama, close any open Terminal/Command Prompt before you pull Llama3.

Once you start Ollama, you have to pull Llama3 model by running following command:

```
ollama pull llama3
```

To check if your lapotp has enough resources to run Ollama, you can run following command:

```
curl -o /dev/null -s -w 'Total: %{time_total}s\n' http://localhost:11434/api/generate -d '{"model": "llama3", "stream": false, "prompt": "Despite the diversity among GPCRs, are there similarities in their activation pathways?", "system":"Use the following information to answer the question in less than 200 words, try not to use anything else: [tipsychotics). GPCR activation is facilitated by extracellular ligands, and leads to the recruitment of intracellular G proteins 3,6. Structural rearrangements of residue contacts in the transmembrane domain serve as ‘activation pathways’ that connect the ligand- binding pocket to the G protein-coupling region within the receptor. How similar are these activation pathways across different class A GPCRs? Here, we analysed 27 GPCRs from diverse subgroups for which structures of active and/or inactive states are available. We show that despite the diversity in activation pathways between receptors, the pathways converge near the G protein- coupling region. This convergence is mediated by a strikingly conserved structural rearrangement of, eptor activation are broadly similar (e.g. contraction of ligand binding site, opening of the cytosolic side due to relocation of TM6). However, receptor activation is mediated by diverse ligands and hence some aspects of ligand-induced GPCR activation must necessarily be receptor-specific. How similar are the activation pathways across different receptors? We carried out a comprehensive comparison of residue contacts of inactive and active state structures. Structural equivalence for residues across the different GPCRs was assigned using the GPCRdb numbering scheme 19 from GPCRdb 20 (www.gpcrdb.org ) (Methods). A contact between a pair of residues is defined to exist if the inter-atomic distance between any two atoms across the res, t reconsideration of the mechanisms involved in cellular signaling diversiﬁcation. Despite their large numbers, GPCRs can only signal through the same limited number of Gproteins that they can activate. Previous studies indicated that signaling diversity is in part dictated by a combination of G pro- teins activated by individual GPCRs ( Inoue et al., 2019 ;Masuho (C) G a-selectivity ﬁngerprints of RGS13 WT (left), RGS18 WT (right), and the chimera (center). (D) G a-selectivity bar codes of RGS8 WT, RGS14 WT, and the RGS8/14-F chimera. (E) Ga-selectivity ﬁngerprints of RGS8 WT (left), RGS14 WT (right), and the RGS8/14-F chimera. Plotted values are means ±SEMs of 3 independent experiments. The PDB accession number 1AGR is used in (B) and (D), Diverse activation pathways in class A GPCRs converge near the G protein-coupling region A. J. Venkatakrishnan1,6,*, Xavier Deupi2, Guillaume Lebon3, Franziska M. Heydenreich2,4, Tilman Flock1, Tamara Miljus2,4, Santhanam Balaji1, Michel Bouvier5, Dmitry B. Veprintsev2,4, Christopher G. Tate1, Gebhard F. X. Schertler2,4, and M. Madan Babu1,* 1MRC Laboratory of Molecular Biology, Francis Crick Avenue, Cambridge CB2 0QH, United Kingdom 2Paul Scherrer Institute, Villigen, Switzerland 3Institut de Génomique Fonctionnelle, CNRS UMR 5203, INSERM U1191, Université Montpellier, Montpellier, France 4Department of Biology, ETH Zurich, Wolfgang-Pauli-Str. 27, Zurich, Switzerland 5Institute for Research in Immunology and Cancer, University of Mo, uscarinic receptor (M2R) 11, nucleoside-activatable A 2A receptor (A 2AR)12, and peptide-activatable µ-opioid receptor (µOR) 10. The remaining structures have been determined only in either inactive or active states. The availability of structures of GPCRs from divergent subgroups (as low as ~20% sequence identity 18) that are bound to chemically diverse ligands and known to couple to different G proteins, allowed us to investigate activation pathways across class A GPCRs. Given that the GPCRs are structurally similar and activate a small set of G proteins, some structural aspects of receptor activation are broadly similar (e.g. contraction of ligand binding site, opening of the cytosolic side due to relocation of TM6). However, rece, ic residue contacts that mediate the convergence of activation pathways across class A GPCRs. Because the microenvironment (i.e. surrounding residues/second shell residues) in which such rearrangement takes place diverges between receptor families, the detailed mechanism by which this common step is facilitated by diverse ligands is likely to be distinct for different sets of GPCRs. Remarkably, despite such differences, we find that the activation pathways ultimately converge to a common and very specific set of contact rearrangements between topologically equivalent residues near the G protein-coupling region. Future studies aimed at investigating residues at and around these positions can help uncover the unique steps that lead to]"}'
```

This will print total time it might take to run typical MyGPT quries. You can run the same command multiple times to get average time. Ollama generally loads the model into the memory and it might take some time to run first query. But subsequent queries should be faster.

The output should look like this:

```
Total: 9.975889s
```

If it's taking more than a minute to run, your laptop might not have enough resources to run Ollama.

## MyGPT installation


1. **Get MyGPT source code**

	If you have zip file with MyGPT installation instructions, you can unzip it and copy it on your desktop or your desired location. You can skip remaining instructions from below and go to Step 2.

	Or you can get installation instructions by running following command from Terminal. It will create `MyGPT_public` folder on your Desktop or desired folder. To get this from GitHub, we will need `GitHub username` and `GitHub access token` as the GitHub repo is private. When you run the following command, it will ask for this credentials.

	```
	git clone https://github.com/mb-group/MyGPT_public.git
	```

> [!NOTE] 
> If you don't have GitHub access token, you can genearte classic token using this guideline: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic

> [!CAUTION] 
> While generating you GitHub Access Token, make sure you check access for `repo` and  `read:packages` similar to image below.

<img src="../../images/GitHub_access_token_scope.png?raw=true" width="600px">

2. login to GitHub Docker registry

	As the GitHub repository is private rightnow, we have to login to GitHub Docker registry to use the prebuilt images. To login to GitHub Docker registry, run following command. It will ask for your GitHub username and password. 

> [!CAUTION]
> Make sure Docker Desktop application is open and running before running the command.
> the password is your access token (same token you used in step 1), not your github password you use to login in github account.

```
docker login ghcr.io
```

3. **Run docker containers**

	We will run following script to run docker containers:

	```
	cd MyGPT_public\installation\windows
	run_docker.bat
	```

	This script should take around 5-10 minutes to run.
	Once the script finish running, open following pages in your default browser. 
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

* <ins>Zotero API key:</ins> You can generate an API key in your profile settings https://www.zotero.org/settings/keys

* <ins>Zotero User ID:</ins> You can get it from Zotero prfile page by visiting https://www.zotero.org/settings/keys. It's 6-7 digit number.

* <ins>Zotero Group ID:</ins> You can get it from URL of the group, for example, here is URL for BABU group and group ID is `4982570`: 
https://www.zotero.org/groups/4982570/babu_group/

* <ins>Zotero Collection ID:</ins> You can get it from URL of the collection, for example, here is URL for BABU group and collection ID is `YTPMLXYY`:
https://www.zotero.org/groups/4982570/babu_group/collections/YTPMLXYY

## Other optional tasks for MyGPT pipeline

### update MyGPT docker images

To update MyGPT docker images, run following command:

```
remove_images.bat
run_docker.bat
```

<!-- ### create super user

To create super user, run following command:

```
sh create_superuser.sh
```
You can check backend database at http://localhost:8000/admin/ with username and password you created in above step. -->

### stop docker containers

To stop docker containers, run following command:

```
stop_docker.bat
```