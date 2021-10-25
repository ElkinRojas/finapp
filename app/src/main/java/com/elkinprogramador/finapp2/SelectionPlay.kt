package com.elkinprogramador.finapp2

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.widget.EditText
import android.widget.TableLayout
import android.widget.TextView
import android.widget.Toast
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.Volley
import com.squareup.picasso.Picasso
import org.json.JSONArray
import org.json.JSONException

class SelectionPlay : AppCompatActivity() {
    var tblQuestion: TableLayout?=null
    var txtRequest: TextView?= null
    var txtAnswer: EditText?= null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_selection_play)
        tblQuestion = findViewById(R.id.tblQuestion)
        txtRequest = findViewById(R.id.txtRequest)

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
                        txtQuestion.text = jsonObject.getString("question")
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

    fun viewScore(view: View) {
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
                        txtQuestion.text = jsonObject.getString("question")
                        tblQuestion?.addView(registro)


                    }
                } catch (e: JSONException) {
                    e.printStackTrace()
                }
            }, Response.ErrorListener { error ->

            }
        )

        queue.add(jsonObjectRequest)
    }
}