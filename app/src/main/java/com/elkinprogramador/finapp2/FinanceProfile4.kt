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
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley

class FinanceProfile4 : AppCompatActivity() {
    var txtQuestion4: TextView?=null
    var txtAnswer4: EditText?=null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_finance_profile4)
        txtQuestion4 = findViewById(R.id.txtQuestion4)
        txtAnswer4 = findViewById(R.id.txtAnswer4)
    }

    fun add_question4(view: View){
        var queue = Volley.newRequestQueue(this)
        val url = "http://192.168.88.7/finapp/add_question.php"
        val user = intent.getStringExtra("user").toString()
        //Toast.makeText(this, url, Toast.LENGTH_LONG).show()

        if ( txtAnswer4?.text.toString() == "a" || txtAnswer4?.text.toString() == "b" || txtAnswer4?.text.toString() == "c" ) {
            val resultadoPost = object : StringRequest(Request.Method.POST, url,
                Response.Listener { response ->
                    if ( response == "El registro se inserto de forma exitosa" ) {
                        var intent = Intent(this, FinanceProfile5::class.java)
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
                    parametros.put("question", txtQuestion4?.text.toString())
                    parametros.put("answer", txtAnswer4?.text.toString())
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