# Setting Up Fingerprint Driver on RedmiBook 2023 15 (Ubuntu 24.04)

## Overview
This guide explains how to set up and install the fingerprint driver on RedmiBook 2023 15 running Ubuntu 24.04.

---

## Installation Steps

### 1. Clone the Repository
Clone the required repository for configuring the driver:

```bash
git clone git@github.com:Maijorpain/redmibook2023_15_fingerprint.git
```

### 2. Run the Installation Script
Navigate to the repository directory and execute the installation script:

```bash
cd redmibook2023_15_fingerprint
chmod +x install.sh
sudo ./install.sh
```

---

## Notes
- Ensure that `git` is installed on your system. If not, install it using the following command:
  ```bash
  sudo apt update && sudo apt install git -y
  ```
- The script must be executed with superuser (root) privileges. If needed, prepend `sudo` to the script execution command.

---

## Verification
After the installation, reboot your system and verify the fingerprint scanner functionality in the user settings.

---

