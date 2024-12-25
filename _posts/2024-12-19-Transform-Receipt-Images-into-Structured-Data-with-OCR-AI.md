---
layout: post
title: "Transform Receipt Images into Structured Data with OCR & AI"
date: 2024-12-19
categories: [AI, Data Processing, OCR]
tags: [ocr, machine learning, python, data extraction, receipts, automation]
image: 
  path: /assets/img/headers/receipt-ocr.jpg
  alt: Receipt scanning with AI
---

<div align="center">

# 🚀 Receipts Unlocked

**Transform Receipt Images into Structured Data with OCR & AI**

[![Python 3.x](https://img.shields.io/badge/python-3.x-blue.svg)](https://www.python.org/downloads/)
[![OpenCV](https://img.shields.io/badge/opencv-%23white.svg?style=flat&logo=opencv&logoColor=white)](https://opencv.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

</div>

---
![image](https://github.com/user-attachments/assets/fd0cf629-8794-4e05-9369-a94e96fa60c1)

## 🚀 Features

- 📸 Extract text from receipt images using OCR
- 🤖 AI-powered data structuring
- 📊 Convert receipt data to JSON format
- 🎯 High accuracy text recognition
- ⚡ Fast processing

## 📋 Requirements

- Python 3.x
- OpenCV
- Pytesseract
- OpenAI API key

## 🛠️ Installation

### 1. Install Tesseract OCR

<details>
<summary>Choose your operating system</summary>

- **Windows**: Download from [UB-Mannheim/tesseract](https://github.com/UB-Mannheim/tesseract/wiki)
- **Linux**: `sudo apt-get install tesseract-ocr`
- **Mac**: `brew install tesseract`

</details>

### 2. Set Up Project

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. Install Python dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Create a `.env` file in the project root and add your OpenAI API key:
   ```
   OPENAI_API_KEY=your_api_key_here
   ```

4. Update the Tesseract path in `config.py` to match your system's installation.

## 💻 Usage

### Method 1: Using the Python Module

```python
from src.main import process_receipt

result = process_receipt("path/to/receipt.jpg")
print(result)
```

### Method 2: Running the Script Directly
1. Add an image of a receipt named `receipt.jpg` to the project directory
2. Run the script:
   ```bash
   python main.py
   ```
3. The extracted JSON data will be saved in `receipt.json`

## 📊 Output Format

The program outputs a JSON object with structured receipt data. Example format:

```json
{
  "store_name": "Example Store",
  "date": "2023-01-01",
  "items": [
    {
      "name": "Product 1",
      "price": 10.99,
      "quantity": 1
    }
  ],
  "total": 10.99
}
```

## 📁 Project Structure

- `main.py`: The main script that processes the image, extracts text, and converts it to JSON
- `src/`: Source code directory
- `requirements.txt`: List of required Python packages
- `config.py`: Configuration settings including Tesseract path
- `README.md`: Project documentation

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.





