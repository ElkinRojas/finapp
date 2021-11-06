package com.elkinprogramador.finapp2

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import org.json.JSONArray
import org.json.JSONException

class FinanceProfile7 : AppCompatActivity() {
    var txtQuestion7: TextView?=null
    var txtAnswer7: EditText?=null
    var txtTitle: TextView?= null
    var txtProfile: TextView?= null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_finance_profile7)
        txtQuestion7 = findViewById(R.id.txtQuestion7)
        txtAnswer7 = findViewById(R.id.txtAnswer7)
        txtTitle = findViewById(R.id.txtTitle)
        txtProfile = findViewById(R.id.txtProfile)
    }

    fun add_question7(view: View){
        var queue = Volley.newRequestQueue(this)
        val url = "http://192.168.88.7/finapp/add_question.php"
        val user = intent.getStringExtra("user").toString()

        if ( txtAnswer7?.text.toString() == "a" || txtAnswer7?.text.toString() == "b" || txtAnswer7?.text.toString() == "c" ) {
            val resultadoPost = object : StringRequest(Request.Method.POST, url,
                Response.Listener { response ->
                    if ( response == "El registro se inserto de forma exitosa" ) {
                        var intent = Intent(this, FinanceProfileResult::class.java)
                        intent.putExtra("user", user)
                        startActivity(intent)
                    } else {
                        Toast.makeText(this,"Se presento un error desconocido en la aplicación",
                            Toast.LENGTH_LONG).show()
                    }
                    //Toast.makeText(this, response, Toast.LENGTH_LONG).show()
                }, Response.ErrorListener { error ->
                    Toast.makeText(this, "$error", Toast.LENGTH_LONG).show()
                }) {
                override fun getParams(): MutableMap<String, String> {
                    val parametros = HashMap<String, String>()
                    parametros.put("question", txtQuestion7?.text.toString())
                    parametros.put("answer", txtAnswer7?.text.toString())
                    parametros.put("user", user)
                    parametros.put("type", "1")
                    return parametros
                }
            }
            queue.add(resultadoPost)
        } else {
            Toast.makeText(this,"Solo se permiten tres opciones de respuesta (a,b,c)", Toast.LENGTH_LONG).show()
        }
    }
}