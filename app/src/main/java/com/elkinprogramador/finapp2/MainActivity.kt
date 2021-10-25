package com.elkinprogramador.finapp2
import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.Toast
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import org.json.JSONObject

class MainActivity : AppCompatActivity() {
    var txtDocument: EditText?=null
    var txtPassword: EditText?=null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        txtDocument=findViewById(R.id.txtDocument)
        txtPassword=findViewById(R.id.txtPassword)
    }

    fun clickLogin(view: View){
        var queue = Volley.newRequestQueue(this)
        val url = "http://192.168.88.7/finapp/login.php"
        //Toast.makeText(this, url, Toast.LENGTH_LONG).show()

        val resultadoPost = object : StringRequest(Request.Method.POST, url,
            Response.Listener { response ->
                if ( response == "Todos los campos son obligatorios" ) {
                    Toast.makeText(this, "Todos los campos son obligatorios", Toast.LENGTH_LONG).show()
                } else if( response == "Error al ingresar" ) {
                    Toast.makeText(this, "Error de credenciales. Documento o contraseña incorrectos", Toast.LENGTH_LONG).show()
                } else {
                    var intent = Intent(this,MainPage::class.java)
                    intent.putExtra("id", response)
                    startActivity(intent)
                }
                //Toast.makeText(this, response, Toast.LENGTH_LONG).show()
            }, Response.ErrorListener { error ->
                Toast.makeText(this, "$error", Toast.LENGTH_LONG).show()
            }) {
            override fun getParams(): MutableMap<String, String> {
                val parametros = HashMap<String, String>()
                parametros.put("document", txtDocument?.text.toString())
                parametros.put("password", txtPassword?.text.toString())
                return parametros
            }
        }
        queue.add(resultadoPost)
    }

    fun clickGoRegister(view: View){
        var intent = Intent(this,Register::class.java)
        startActivity(intent)
    }
}