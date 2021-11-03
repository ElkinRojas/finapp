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

class FinanceProfile2 : AppCompatActivity() {
    var txtQuestion1: TextView?=null
    var txtAnswer1: EditText?=null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_finance_profile)
        val id = intent.getStringExtra("id").toString()
        txtQuestion1 = findViewById(R.id.txtQuestion2)
        txtAnswer1 = findViewById(R.id.txtAnswer2)
    }

    fun clickLogin(view: View){
        var queue = Volley.newRequestQueue(this)
        val url = "http://192.168.88.7/finapp/add_question.php"
        //Toast.makeText(this, url, Toast.LENGTH_LONG).show()

        val resultadoPost = object : StringRequest(Request.Method.POST, url,
            Response.Listener { response ->
                if ( response == "El registro se inserto de forma exitosa" ) {
                    if (txtAnswer1?.text.toString() != "" || txtAnswer1?.text.toString() != null) {
                        var intent = Intent(this, MainPage::class.java)
                        startActivity(intent)
                    } else {
                        Toast.makeText(this,"Debe responder esta pregunta para poder continuar",Toast.LENGTH_LONG).show()
                    }
                } else {
                    Toast.makeText(this,"Se presento un error desconocido en la aplicación",Toast.LENGTH_LONG).show()
                }
                //Toast.makeText(this, response, Toast.LENGTH_LONG).show()
            }, Response.ErrorListener { error ->
                Toast.makeText(this, "$error", Toast.LENGTH_LONG).show()
            }) {
            override fun getParams(): MutableMap<String, String> {
                val parametros = HashMap<String, String>()
                parametros.put("question", txtQuestion1?.text.toString())
                parametros.put("answer", txtAnswer1?.text.toString())
                parametros.put("id", intent.getStringExtra("id").toString())
                parametros.put("type", "1")
                return parametros
            }
        }
        queue.add(resultadoPost)
    }
}