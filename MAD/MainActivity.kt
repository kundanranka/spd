package com.example.myapplication

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.RatingBar
import com.google.android.material.snackbar.Snackbar

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val submitBtn = findViewById<Button>(R.id.submitButton);
        submitBtn.setOnClickListener {
            val ratingBar = findViewById<RatingBar>(R.id.ratingBar2);
            val str = ratingBar.rating.toString();
            Snackbar.make(it, "$str/5.0 rating given",Snackbar.LENGTH_SHORT).show();
        }
    }
}