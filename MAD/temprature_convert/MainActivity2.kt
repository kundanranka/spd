package com.rath.tempratureconverter

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView

class MainActivity2 : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main2)
        val button = findViewById<Button>(R.id.eat)
        var emoji = findViewById<ImageView>(R.id.emoji)
        var msg = findViewById<TextView>(R.id.msg)

        button.setOnClickListener(View.OnClickListener {
            emoji.setImageDrawable(resources.getDrawable(R.drawable.full, applicationContext.theme))
            button.text = "Done"
            msg.text = "I'm So full"
        })
    }
}