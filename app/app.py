import os

from flask import Flask, render_template, redirect, url_for 
  
app = Flask(__name__) 

def _get_exercise_list():
    """Get the exercises; uses the Docker Image Location."""
    return map(
        lambda x: x.replace(".html", ""), 
        list(os.walk("/src/templates/exercises"))[0][2]
    )
  
@app.route("/") 
def home(): 
    return render_template("index.html", exercises=_get_exercise_list()) 
  
  
@app.route("/exercises/<exercise>") 
def exercise_page(exercise):
    return render_template(f"exercises/{exercise}.html", exercise=exercise)
  
  
if __name__ == "__main__": 
    app.run(debug=True, host="0.0.0.0") 