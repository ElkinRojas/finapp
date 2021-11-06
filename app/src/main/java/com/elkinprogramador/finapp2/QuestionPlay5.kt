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

class QuestionPlay5 : AppCompatActivity() {
    var txtQPlay5: TextView?=null
    var txtAnswerPlay5: EditText?=null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_question_play5)
        txtQPlay5 = findViewById(R.id.txtQPlay5)
        txtAnswerPlay5 = findViewById(R.id.txtAnswerPlay5)
    }

    fun add_question_play5(view: View){
        var queue = Volley.newRequestQueue(this)
        val url = "http://192.168.88.7/finapp/add_question.php"
        val user = intent.getStringExtra("user").toString()
        //Toast.makeText(this, url, Toast.LENGTH_LONG).show()

        if ( txtAnswerPlay5?.text.toString() == "b" ) {
            val resultadoPost = object : StringRequest(Request.Method.POST, url,
                Response.Listener { response ->
                    if ( response == "El registro se inserto de forma exitosa" ) {
                        var intent = Intent(this, QuestionMessageFinal::class.java)
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
                    parametros.put("question", txtQPlay5?.text.toString())
                    parametros.put("answer", txtAnswerPlay5?.text.toString())
                    parametros.put("user", user)
                    parametros.put("type", "3")
                    return parametros
                }
            }
            queue.add(resultadoPost)
        } else {
            Toast.makeText(this,"XRespuesta incorrecta. Intentelo de nuevo.", Toast.LENGTH_LONG).show()
        }
    }
}