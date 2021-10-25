package com.elkinprogramador.finapp2

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.widget.*
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.Volley
import org.json.JSONArray
import org.json.JSONException

class Glossary : AppCompatActivity() {
    var txtSearch: EditText?=null
    var tblGlossary: TableLayout?=null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_glossary)
        txtSearch = findViewById(R.id.txtSearch)
        tblGlossary = findViewById(R.id.tblGlossary)
    }

    fun LoadTable(view: View) {
        tblGlossary?.removeAllViews()
        var queue = Volley.newRequestQueue(this)
        var url = "http://192.168.88.7/finapp/registros.php?words=${txtSearch?.text}"

        var jsonObjectRequest = JsonObjectRequest(Request.Method.GET, url, null,
            Response.Listener { response ->
                try {
                    var jsonArray: JSONArray = response.getJSONArray("data")
                    for (i in 0 until jsonArray.length()) {
                        var jsonObject = jsonArray.getJSONObject(i)
                        val registro =
                            LayoutInflater.from(this).inflate(R.layout.table_row_words, null, false)
                        val colName = registro.findViewById<View>(R.id.colName) as TextView
                        val btnView = registro.findViewById<View>(R.id.btnView)
                        colName.text = jsonObject.getString("name")
                        btnView.id = jsonObject.getString("id").toInt()
                        tblGlossary?.addView(registro)
                    }
                } catch (e: JSONException) {
                    e.printStackTrace()
                }
            },Response.ErrorListener { error ->

            }
        )

        queue.add(jsonObjectRequest)

    }

    fun clickGoViewWord(view: View) {
        var intent = Intent(this,ViewWord::class.java)
        intent.putExtra("id", view.id.toString())
        startActivity(intent)
    }
}