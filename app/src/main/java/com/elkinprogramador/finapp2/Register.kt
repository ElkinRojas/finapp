package com.elkinprogramador.finapp2

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.Toast
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley

class Register : AppCompatActivity() {
    var txtRegisterDocument: EditText?=null
    var txtRegisterName: EditText?=null
    var txtRegisterPassword: EditText?=null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_register)
        txtRegisterDocument=findViewById(R.id.txtRegisterDocument)
        txtRegisterName=findViewById(R.id.txtRegisterName)
        txtRegisterPassword=findViewById(R.id.txtRegisterPassword)
    }

    fun clickBtnAdd(view: View) {
        val url = "http://192.168.88.7/finapp/insertar.php"
        val queue = Volley.newRequestQueue(this)
        var resultadoPost = object : StringRequest(
            Request.Method.POST, url,
            Response.Listener<String> { response ->
                Toast.makeText(this, "Usuario registrado exitosamente", Toast.LENGTH_LONG).show()
            }, Response.ErrorListener { error ->
                Toast.makeText(this, "Error $error ", Toast.LENGTH_LONG).show()
            }){
            override fun getParams(): MutableMap<String, String> {
                val parametros=HashMap<String,String>()
                parametros.put("document", txtRegisterDocument?.text.toString())
                parametros.put("name", txtRegisterName?.text.toString())
                parametros.put("password", txtRegisterPassword?.text.toString())
                return parametros
            }
        }
        queue.add(resultadoPost)
    }

    fun clickGoBack(view: View){
        var intent = Intent(this,MainActivity::class.java)
        startActivity(intent)
    }
}