package com.elkinprogramador.finapp2

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.Volley
import com.squareup.picasso.Picasso

class ViewWord : AppCompatActivity() {
    var txtTittle: TextView?= null
    var txtMean: TextView?= null
    var txtLink: TextView?= null
    var imageViewWord: ImageView?= null
    var txtImageFoot: TextView?= null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_view_word)
        txtTittle = findViewById(R.id.txtTittle)
        txtMean = findViewById(R.id.txtMean)
        txtLink = findViewById(R.id.txtLink)
        txtImageFoot = findViewById(R.id.txtImageFoot)
        imageViewWord = findViewById(R.id.imageViewWord)
        val id = intent.getStringExtra("id").toString()

        val queue = Volley.newRequestQueue(this)
        var url = "http://192.168.88.7/finapp/registro.php?id=$id"
        val jsonObjectRequest = JsonObjectRequest(
            Request.Method.GET,url,null,
            Response.Listener { response ->
                txtTittle?.setText(response.getString("name"))
                txtMean?.setText(response.getString("description"))
                txtLink?.setText(response.getString("link"))
                txtImageFoot?.setText(response.getString("photo"))
                if ( id == "6" ) {
                    Picasso.get().load(R.drawable.captura2).into(imageViewWord)
                } else {
                    Picasso.get().load("${response.getString("photo")}").into(imageViewWord)
                }
            }, Response.ErrorListener { error ->
                Toast.makeText(this, error.toString(), Toast.LENGTH_LONG).show()
            }
        )
        queue.add(jsonObjectRequest)
    }

    fun clickZoomImage(view: View) {
        var intent = Intent(this,ZoomImage::class.java)
        intent.putExtra("photo", txtImageFoot?.text.toString())
        startActivity(intent)
    }
}