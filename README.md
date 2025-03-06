# 🎬 Django Video Processing API (FFmpeg + Docker)

A high-performance **video processing API** built with **Django**, **FFmpeg**, and **Gunicorn**. This API allows users to perform various video operations like compression, format conversion, trimming, extracting audio, adding watermarks, background removal, and AI-powered enhancements.

---

## 🚀 Features
✅ **Compress videos** (Reduce file size)  
✅ **Convert video formats** (MP4, AVI, MKV, etc.)  
✅ **Resize videos** (Change resolution)  
✅ **Trim videos** (Cut specific time segments)  
✅ **Extract audio** (MP3, WAV)  
✅ **Add watermarks** (Overlay logos/text)  
✅ **Generate subtitles** (AI-powered transcription)  
✅ **Remove background** (Green screen effect)  
✅ **Translate & Dub videos** (Multi-language audio using AI)  
✅ **Detect objects** (AI-based object tracking using YOLO)  
✅ **Convert video to GIF**  

---

## 🛠️ **Tech Stack**
- **Backend:** Django + Django REST Framework (DRF)
- **Processing Engine:** FFmpeg + OpenCV + Whisper AI
- **Containerization:** Docker + Gunicorn
- **Database:** PostgreSQL (or SQLite)
- **Task Queue:** Celery + Redis (Optional for async processing)

---

## 🔧 **Installation**

### 📌 1️⃣ **Clone the Repository**
```bash
git clone https://github.com/yourusername/video-processing-api.git
cd video-processing-api
```

### 📌 2️⃣ Install Dependencies
```bash
python -m venv venv
source venv/bin/activate  # On Windows use: venv\Scripts\activate
pip install -r requirements.txt
```
Install FFmpeg (Required)
```bash
sudo apt install ffmpeg  # Ubuntu
brew install ffmpeg      # macOS
choco install ffmpeg     # Windows
```

### 📌 3️⃣ Run Migrations & Start the Server
```bash
python manage.py migrate
python manage.py runserver
```
Now, visit `http://127.0.0.1:8000/` to start processing videos.


## 🐳 Run with Docker

### 📌 1️⃣ Build the Docker Image
```bash
docker build -t video-processing-api .
```

### 📌 2️⃣ Run the Docker Container
```bash
docker run -p 8000:8000 video-processing-api
```