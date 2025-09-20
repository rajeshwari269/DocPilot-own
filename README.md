
<h1> 🩺 DocPilot - A Next Gen EMR App </h1>
</div>

![](docs/assets/docpilot_preview.gif)

DocPilot aims to overcome the limitations of traditional Electronic Medical Record (EMR) systems, which are frequently cumbersome, costly, and challenging for healthcare providers to navigate. By utilizing advanced AI for transcription and data extraction, DocPilot eliminates the need for manual data entry, streamlining record management and enhancing data accuracy. This innovative approach addresses the inefficiencies of conventional EMR systems, promoting a more effective healthcare delivery system. 

## 💻 Technologies Used

- 🎯 Flutter & Dart
- 🗄️ Appwrite
- 🤖 Google Gemini API (gen-ai)
- 🗣️ Deepgram’s `nova-3-medical` model API (leading  in medical transcription, speech-to-text)

##  App Preview

<div align="center">
  
| Dashboard | Calendar | Manage Patient |
| :---         |     :---      |          :--- |
| <img src= "https://github.com/user-attachments/assets/4f461c03-692a-4657-9deb-099e6c7e8395" width="250" height="auto" />  | <img src="https://github.com/user-attachments/assets/1bfcd307-dc0b-4b13-a90e-70447a61e016" width="250" height="auto" />    | <img src="https://github.com/user-attachments/assets/7f97d944-0976-47fd-8a30-480ced123a1c" width="250" height="auto" />    |

| Patients | Prescribe | Generated Prescription |
| :---         |     :---      |          :--- |
|  <img src="https://github.com/user-attachments/assets/e173dc6d-cdbe-4754-8002-d6fb81747c85" width="250" height="auto" /> | <img src="https://github.com/user-attachments/assets/0483d5bf-65f0-407f-9570-e86df91a7776" width="250" height="auto" />   |  <img src="https://github.com/user-attachments/assets/0bbf2b0e-a809-41c3-a542-749a656a5a99" width="250" height="auto"/>    |

| Login Screen (Doctor) | Confirmation Code Screen | Login Screen (Patient) |
| :---         |     :---      |          :--- |
|  <img src="https://github.com/user-attachments/assets/c96e7a74-916e-4663-8b44-f809461d4e15" width="250" height="auto" /> | <img src="https://github.com/user-attachments/assets/0bbf2b0e-a809-41c3-a542-749a656a5a99" width="250" height="auto" />   |  <img src="https://github.com/user-attachments/assets/26b93a0d-e17d-4a0c-98cd-190f6279da76" width="250" height="auto"/>    |
</div>

## 🎨 Design Prototype
Check out our app's interface on Figma: [Figma Design Link](https://www.figma.com/design/pD32RZaskUitWMr7nv8nfy/DocPilot?node-id=0-1&t=YoRZ8aAP355lRChq-1)

## Folder Structure

A brief overview of the folder structure is defined in

- [Folder Structure](./docs/FOLDER_STRUCTURE.md)

## 🛠️ Setup Instructions
Our detailed step-by-step guide will help you get up and running:

- 📄 [Setup Process](./docs/SETUP.md)

## ❓ How does DocPilot solve the problem?

DocPilot addresses the challenges of legacy EMR systems by radically simplifying the process for medical professionals:

### 1️⃣ Conversational AI Integration 🗣️🤖

By capturing the entire consultation audio, DocPilot utilizes cutting-edge speech-to-text and language model APIs to reliably transcribe and extract critical medical data in real time. This removes the need for manual data entry and minimizes errors.

### 2️⃣ Streamlined Workflow ⚡

Instead of navigating multiple disparate systems, doctors access a single application that automatically generates structured prescriptions from their conversations. This leads to:

- 📝 **Reduced Administrative Burden**: No more time wasted on manual transcription and record keeping.
- ✅ **Improved Accuracy**: Automatic extraction and prompt correction capabilities ensure critical medical details are correctly recorded.
- ⏱️ **Faster Patient Turnaround**: With a digital-first approach, prescriptions can be reviewed, signed, and shared almost instantaneously.

### 3️⃣ Integrated OPD Appointment Management 📅

Incorporating scheduling capabilities via a calendar module lets doctors manage consultations and follow-ups from within the same ecosystem. This end-to-end integration increases efficiency and ensures continuity of care.

### 4️⃣ Secure and Compliant Data Handling 🔒

With robust authentication, digital PDF signing (using individual PFX certificates), and secure storage practices, DocPilot is built to meet data security standards and instill trust among its users.

## 🌟 Key Features:

### 🗣️ Conversational Prescription Generation:

- Uses Deepgram’s medical transcription API to convert recorded consultations into text. 
- Leverages Google GenAI (e.g., gemini-pro) to parse the transcription and generate a structured JSON prescription that includes symptoms, diagnosis, medications (with dosage and frequency), tests, and follow-up instructions.

### 📄 Automated Document Workflow:

- **Upload**: The doctor’s audio consultation is uploaded and stored securely using Appwrite’s storage.
- **Processing**: An Appwrite function orchestrates the transcription and AI extraction steps.
- **Output**: The structured output is rendered as an editable prescription on the doctor’s dashboard.

### 📅 OPD Appointment Management:

- Integration with the `syncfusion_flutter_calendar` enables real-time scheduling, displays upcoming appointments on the doctor’s dashboard, and allows patients to book consultations directly.

### 🎨 User Experience & Interface:

- Designed in Flutter with a clean, responsive UI.
- Uses state management (BLoC) and dependency injection (GetIt) under a Clean Architecture paradigm to ensure maintainability and scalability.

### 🖋️ Secure PDF Generation & Signing:

- The app generates PDF prescriptions using `syncfusion_flutter_pdf`.
- Implements a digital signing mechanism using individual PFX certificates generated per doctor, ensuring the prescription integrity and authenticity, backed by biometric verification on the client side.

## 🔄 Workflow Overview

### 🎤 Audio Upload & URL Retrieval:

The doctor initiates the process by recording and uploading the consultation audio, which is stored on Appwrite and generates a publicly accessible URL.

### 🗣️ Transcription via Deepgram:

An Appwrite function calls Deepgram’s nova-3-medical model to convert audio into text, ensuring high accuracy in medical terminology.

### 🤖 Extraction with Google GenAI:

The transcription is then sent to Google GenAI with a prompt that instructs the model to extract relevant medical data and output a structured JSON.

### 📝 Prescription Review & PDF Generation:

The app parses the JSON, allowing the doctor to review the prescription. Once approved, the prescription is converted into a PDF and digitally signed with the doctor’s PFX certificate.

### 📅 OPD Scheduling Integration:

Patients and doctors manage and schedule appointments seamlessly through an integrated calendar view.
