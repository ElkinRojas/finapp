package com.elkinprogramador.finapp2

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ImageView
import com.squareup.picasso.Picasso

class ZoomImage : AppCompatActivity() {
    var imageZoom: ImageView?= null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_zoom_image)
        imageZoom = findViewById(R.id.imageZoom)
        val photo = intent.getStringExtra("photo").toString()

        Picasso.get().load("$photo").into(imageZoom)
    }
}