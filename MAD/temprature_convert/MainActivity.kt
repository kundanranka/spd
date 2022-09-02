package com.rath.tempratureconverter

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.view.inputmethod.EditorInfo
import android.widget.Button
import android.widget.EditText
import android.widget.Toast

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val temperature = findViewById<EditText>(R.id.fahrenheit)
        val button = findViewById<Button>(R.id.convert)
        button.setOnClickListener(View.OnClickListener {
            var far: String = temperature.text.toString().trim()
            if (far.isEmpty()) Toast.makeText(applicationContext, "Error", Toast.LENGTH_SHORT).show()
            else{
                temperature.onEditorAction(EditorInfo.IME_ACTION_DONE);
                var celsius = (far.toInt() - 32) * 5/9
                Toast.makeText(applicationContext, "Celsius: $celsius", Toast.LENGTH_LONG).show()
            }
        })
        temperature.text.clear()

        val button2 = findViewById<Button>(R.id.view2)
        button2.setOnClickListener(View.OnClickListener {
            val intent = Intent(this, MainActivity2::class.java)
            startActivity(intent)
        })
    }
}