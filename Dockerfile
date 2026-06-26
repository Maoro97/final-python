# 1. משתמשים באימג' רשמי של פייתון כבסיס
FROM python:3.9-slim

# 2. הגדרת תיקיית העבודה בתוך הקונטיינר
WORKDIR /app

# 3. העתקת קובץ הדרישות והתקנת החבילות
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. העתקת כל שאר קבצי הפרויקט לתוך הקונטיינר
COPY . .

# 5. חשיפת הפורט שבו האפליקציה רצה (Flask משתמש ב-5000 כברירת מחדל)
EXPOSE 5000

# 6. הפקודה שתריץ את האפליקציה כשהקונטיינר עולה
CMD ["python", "app.py"]