package com.elkinprogramador.finapp2

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View

class QuestionMessageFinal : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_question_message_final)
    }

    fun gohome(view: View) {
        var intent = Intent(this,MainPage::class.java)
        startActivity(intent)
    }
}