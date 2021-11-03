package com.elkinprogramador.finapp2

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.Menu
import android.view.MenuItem
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.widget.Toolbar
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.Volley
import com.squareup.picasso.Picasso
import kotlinx.coroutines.selects.SelectClause0

class MainPage : AppCompatActivity() {
    var txtName: TextView?=null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main_page)
        val id = intent.getStringExtra("id").toString()
        txtName=findViewById(R.id.txtName)

        val queue = Volley.newRequestQueue(this)
        var url = "http://192.168.88.7/finapp/user.php?id=$id"
        val jsonObjectRequest = JsonObjectRequest(
            Request.Method.GET,url,null,
            Response.Listener { response ->
                txtName?.setText(response.getString("name"))
            }, Response.ErrorListener { error ->
                Toast.makeText(this, error.toString(), Toast.LENGTH_LONG).show()
            }
        )
        queue.add(jsonObjectRequest)
    }

    override fun onCreateOptionsMenu(menu: Menu?): Boolean {
        menuInflater.inflate(R.menu.activity_main_page_menu, menu)
        return super.onCreateOptionsMenu(menu)
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == R.id.nav_item_one) {
            //startActivity(Intent(this, ViewWord:: class.java))
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "3")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_two) {
            val user = intent.getStringExtra("id").toString()
            var intent = Intent(this, FinanceProfile::class.java)
            intent.putExtra("user", user)
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_glo) {
            startActivity(Intent(this, Glossary::class.java))
        }

        if (item.itemId == R.id.nav_item_sixteen) {
            startActivity(Intent(this, SelectionPlay::class.java))
        }

        if (item.itemId == R.id.nav_item_seventeen) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", intent.getStringExtra("id").toString())
            startActivity(intent)
        }

        return super.onOptionsItemSelected(item)
    }
}