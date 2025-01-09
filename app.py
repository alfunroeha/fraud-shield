from flask import Flask, render_template, request, jsonify
import numpy as np
import tensorflow as tf
import mysql.connector

# connect to database
db = mysql.connector.connect(
    host="localhost", 
    user="root",
    password="",
    database="fraudshield_db"
)

cursor = db.cursor()

model = tf.keras.models.load_model('fraud_detection_model.h5')

application = Flask(__name__)

@application.route('/')
def index():
    return render_template('index.html')

@application.route('/form', methods=['GET', 'POST'])
def form():
    return render_template('form.html')

@application.route('/predict', methods=['POST'])
def predict():
    try:
        # Ambil data dari form
        category = float(request.form['category'])
        amt = float(request.form['amt'])
        age = float(request.form['age'])
        time_category = float(request.form['time_category'])
        day_of_week = float(request.form['day_of_week'])
        month = float(request.form['month'])
        profession = float(request.form['profession'])

        # Debug input values
        #print("Parsed Values:", category, amt, age, time_category, day_of_week, month, profession)

        # model prediction
        result = model.predict([[category, amt, age, time_category, day_of_week, month, profession]])
        prediction = "Fraud" if result[0][0] >= 0.5 else "Not Fraud"

        # save to database
        query = """
        INSERT INTO predictions 
        (category, amt, age, time_category, day_of_week, month, profession, result) 
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """
        values = (category, amt, age, time_category, day_of_week, month, profession, prediction)
        cursor.execute(query, values)
        db.commit()

        #print(f"Prediction: {prediction}")

        # JSON response
        return jsonify({'result': prediction}) 
    
    except Exception as e:
        return jsonify({'error': str(e)})

if __name__ == '__main__':
    application.run(debug=True)
