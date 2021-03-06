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

        if (item.itemId == R.id.nav_item_two) {
            val user = intent.getStringExtra("id").toString()
            var intent = Intent(this, FinanceProfile::class.java)
            intent.putExtra("user", user)
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_one) {
            //startActivity(Intent(this, ViewWord:: class.java))
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "3")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_three) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "4")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_four) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "5")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_six) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "13")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_seven) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "14")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_eight) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "15")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_ten) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "16")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_nine1) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "17")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_nine2) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "18")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_gra1) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "19")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_gra2) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "20")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_gra3) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "21")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_gra4) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "22")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_five) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "6")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_rec) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "7")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_eleven) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "8")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_twenty) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "9")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_threeteen) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "10")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_fourteen) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "11")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_fiveteen) {
            var intent = Intent(this, ViewWord::class.java)
            intent.putExtra("id", "12")
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_glo) {
            startActivity(Intent(this, Glossary::class.java))
        }

        if (item.itemId == R.id.nav_item_sixteen) {
            startActivity(Intent(this, SelectionPlay::class.java))
        }

        if (item.itemId == R.id.nav_item_seventeen) {
            val user = intent.getStringExtra("id").toString()
            var intent = Intent(this, QuestionPlay::class.java)
            intent.putExtra("user", user)
            startActivity(intent)
        }

        if (item.itemId == R.id.nav_item_logout) {
            startActivity(Intent(this, MainActivity::class.java))
        }

        return super.onOptionsItemSelected(item)
    }
}