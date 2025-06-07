# Subdomain URL Sorter

A simple Bash tool to extract subdomains from a list of URLs and save related URLs in per-subdomain files. Great for organizing recon or bug bounty output.

## ✨ Features

- Extracts subdomains based on a user-specified main domain
- Saves URLs into `results/<subdomain>.txt`
- Automatically deduplicates results per file
- Simple, no dependencies

## 📦 Usage

```bash
./subdomain_sorter.sh
