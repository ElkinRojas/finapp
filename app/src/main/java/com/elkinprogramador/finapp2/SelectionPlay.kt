package com.elkinprogramador.finapp2

import android.os.Build
import android.os.Build.VERSION_CODES.N
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.widget.*
import androidx.annotation.RequiresApi
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.Volley
import org.json.JSONArray
import org.json.JSONException

class SelectionPlay : AppCompatActivity() {
    var tblQuestion: TableLayout?=null
    var txtRequest: TextView?= null
    var txtAnswer: EditText?= null
    var txtScore: TextView?= null
    var btnCheck: Button?= null
    val list: MutableList<String> = ArrayList()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_selection_play)
        tblQuestion = findViewById(R.id.tblQuestion)
        txtRequest = findViewById(R.id.txtRequest)
        txtScore = findViewById(R.id.txtScore)
        btnCheck = findViewById(R.id.btnCheck)
        txtAnswer = findViewById(R.id.txtAnswer)
        txtScore?.setText("0")

        //tblQuestion?.removeAllViews()
        var queue = Volley.newRequestQueue(this)
        var url = "http://192.168.88.7/finapp/questions.php?type=2"

        var jsonObjectRequest = JsonObjectRequest(Request.Method.GET, url, null,
            Response.Listener { response ->
                try {
                    var jsonArray: JSONArray = response.getJSONArray("data")
                    for (i in 0 until jsonArray.length()) {
                        var jsonObject = jsonArray.getJSONObject(i)
                        val registro =
                            LayoutInflater.from(this).inflate(R.layout.table_row_questions, null, false)
                        val txtQuestion = registro.findViewById<View>(R.id.txtQuestion) as TextView
                        val btnCheck = registro.findViewById<View>(R.id.btnCheck)
                        txtQuestion.text = jsonObject.getString("question")
                        btnCheck.id = jsonObject.getString("id").toInt()
                        tblQuestion?.addView(registro)
                    }
                } catch (e: JSONException) {
                    e.printStackTrace()
                }
            }, Response.ErrorListener { error ->

            }
        )

        queue.add(jsonObjectRequest)

        val queue2 = Volley.newRequestQueue(this)
        var url2 = "http://192.168.88.7/finapp/requests.php?id=1"
        val jsonObjectRequest2 = JsonObjectRequest(
            Request.Method.GET,url2,null,
            Response.Listener { response ->
                txtRequest?.setText(response.getString("request"))
            }, Response.ErrorListener { error ->
                Toast.makeText(this, error.toString(), Toast.LENGTH_LONG).show()
            }
        )
        queue2.add(jsonObjectRequest2)
    }

    fun Check_question(view: View) {
        val queue = Volley.newRequestQueue(this)
        val xxx = view.id.toString()
        var url = "http://192.168.88.7/finapp/question.php?id=$xxx"
        val jsonObjectRequest = JsonObjectRequest(
            Request.Method.GET,url,null,
            Response.Listener { response ->
                var score = txtScore?.text.toString()
                var scoreint = score.toInt()
                var new_score = scoreint + 1
                var score_string = new_score.toString()

                if ( !list.contains(xxx) ) {
                    if (txtAnswer?.text.toString() == response.getString("answer")) {
                        Toast.makeText(this, "✔Respuesta correcta", Toast.LENGTH_LONG).show()
                        txtScore?.setText(score_string)
                        list.add(xxx)
                    } else {
                        Toast.makeText(this, "XRespuesta incorrecta", Toast.LENGTH_LONG).show()
                    }
                } else {
                    Toast.makeText(this, "⚠Esta pregunta ya fue respondida", Toast.LENGTH_LONG).show()
                }

            }, Response.ErrorListener { error ->
                Toast.makeText(this, error.toString(), Toast.LENGTH_LONG).show()
            }
        )
        queue.add(jsonObjectRequest)
    }
}