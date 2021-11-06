package com.elkinprogramador.finapp2

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.widget.TextView
import android.widget.Toast
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.Volley
import org.json.JSONArray
import org.json.JSONException

class FinanceProfileResult : AppCompatActivity() {
    var txtTitle: TextView?= null
    var txtProfile: TextView?= null
    val array_a: MutableList<String> = ArrayList()
    val array_b: MutableList<String> = ArrayList()
    val array_c: MutableList<String> = ArrayList()
    var result_a: Int = 0;
    var result_b: Int = 0;
    var result_c: Int = 0;
    var total: Int = 0;

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_finance_profile_result)
        txtTitle = findViewById(R.id.txtTitle)
        txtProfile = findViewById(R.id.txtProfile)
    }

    fun financeResult(view: View) {
        var queue = Volley.newRequestQueue(this)
        val user = intent.getStringExtra("user").toString()
        var url = "http://192.168.88.7/finapp/questions.php?type=1&user=$user"

        var jsonObjectRequest = JsonObjectRequest(Request.Method.GET, url, null,
            Response.Listener { response ->
                try {
                    var jsonArray: JSONArray = response.getJSONArray("data")
                    for (i in 0 until jsonArray.length()) {
                        var jsonObject = jsonArray.getJSONObject(i)

                        if ( jsonObject.getString("answer") == "a" ) {
                            array_a.add(jsonObject.getString("answer"))
                        } else if ( jsonObject.getString("answer") == "b" ) {
                            array_b.add(jsonObject.getString("answer"))
                        } else if (  jsonObject.getString("answer") == "c" ) {
                            array_c.add(jsonObject.getString("answer"))
                        }
                    }

                    result_a = array_a?.size * 1
                    result_b = array_b?.size * 2
                    result_c = array_c?.size * 3
                    total = result_a + result_b + result_c

                    if ( total >= 9 && total <= 14 ) {
                        txtTitle?.text = "Inversionista Conservador"
                        txtProfile?.text = "Este inversionista se caracteriza por ser menos tolerante al riesgo y valorar la seguridad. Por lo tanto, escoge instrumentos de inversión que le den certeza de que no perderá parte o todo el dinero que invertirá (su capital). No le importa que las ganancias (rendimiento) obtenidas sean bajas."
                    } else if ( total >= 15 && total <= 21 ) {
                        txtTitle?.text = "Inversionista Moderado"
                        txtProfile?.text = "Este inversionista es cauteloso con sus decisiones, pero está dispuesto a tolerar un riesgo moderado para aumentar sus ganancias. Procura mantener un balance entre rentabilidad y seguridad."
                    } else if ( total >= 22 && total <= 27 ) {
                        txtTitle?.text = "Inversionista Agresivo"
                        txtProfile?.text = "Busca los mayores rendimientos posibles, por lo que está dispuesto a asumir el riesgo que sea necesario. Se trata por ejemplo, de inversionistas jóvenes, pero que cuentan también con solidez económica y con ingresos de moderados a altos y personas solteras o aún sin hijos, entre los 30 y los 40 años de edad."
                    }

                } catch (e: JSONException) {
                    e.printStackTrace()
                }
            }, Response.ErrorListener { error ->
                Toast.makeText(this, error.toString(), Toast.LENGTH_LONG).show()
            }
        )

        queue.add(jsonObjectRequest)
    }

    fun gohome(view: View) {
        var intent = Intent(this,MainPage::class.java)
        startActivity(intent)
    }
}