package com.example.practice

import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    var gridView: GridView? = null
    var tv: TextView? = null
    var items = arrayOf("MCA", "MSc", "ME", "BE", "MTech", "MTech", "BSc", "MBA", "Diploma")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val gridView = findViewById<GridView>(R.id.g1)
        val tv = findViewById<TextView>(R.id.textView)
        val adapter: ArrayAdapter<*> =
            ArrayAdapter<Any?>(this,R.layout.layout, R.id.textView, items)
        gridView.setAdapter(adapter)
        gridView.setOnItemClickListener(AdapterView.OnItemClickListener { parent, view, position, id ->
            val value = adapter.getItem(position).toString()
            Toast.makeText(applicationContext, value, Toast.LENGTH_LONG).show()
        });
    }
}