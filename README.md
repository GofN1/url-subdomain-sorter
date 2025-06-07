# Subdomain URL Sorter

A simple Bash tool to extract subdomains from a list of URLs and save related URLs in per-subdomain files. Perfect for organizing recon data, bug bounty findings, or automation pipelines.

---

## ✨ Features

- 🔍 Extracts subdomains based on a main domain (e.g., `example.com`)
- 🗂 Creates a results file for each subdomain
- 📑 Automatically gathers and deduplicates related URLs
- ✅ No dependencies, just native Bash

---

## 📦 Usage

### 🔧 Run the script

```bash
./subdomain_sorter.sh

### 🖐️ You'll be prompted for:

- **Input file** — a plain text file with one URL per line  
  _Example:_ `allurls.txt`

- **Main domain** — the root domain to extract subdomains from  
  _Example:_ `example.com`

---

### 💡 Example Run

```bash
$ ./subdomain_sorter.sh
Enter the name of the input file: allurls.txt
Enter the main domain (e.g., example.com): example.com
