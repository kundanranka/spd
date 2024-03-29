import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

import java.math.BigDecimal


class MainActivity : AppCompatActivity(), View.OnClickListener {

    private var operand1 = BigDecimal.ZERO
    private var operand2 = BigDecimal.ZERO
    var operation = ""


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        setOnClickListener()

    }

    private fun setOnClickListener() {
        val button0 = findViewById<Button>(R.id.button0);
        val button1 = findViewById<Button>(R.id.button1);
        val button2 = findViewById<Button>(R.id.button2);
        val button3 = findViewById<Button>(R.id.button3);
        val button4 = findViewById<Button>(R.id.button4);
        val button5 = findViewById<Button>(R.id.button5);
        val button6 = findViewById<Button>(R.id.button6);
        val button7 = findViewById<Button>(R.id.button7);
        val button8 = findViewById<Button>(R.id.button8);
        val button9 = findViewById<Button>(R.id.button9);
        val dotButton = findViewById<Button>(R.id.dotButton);
        val acButton = findViewById<Button>(R.id.acButton);
        val addButton = findViewById<Button>(R.id.addButton);
        val subButton = findViewById<Button>(R.id.subButton);
        val mulButton = findViewById<Button>(R.id.mulButton);
        val divButton = findViewById<Button>(R.id.divButton);
        val modButton = findViewById<Button>(R.id.modButton);
        val equalButton = findViewById<Button>(R.id.equalButton);
        button0.setOnClickListener(this)
        button1.setOnClickListener(this)
        button2.setOnClickListener(this)
        button3.setOnClickListener(this)
        button4.setOnClickListener(this)
        button5.setOnClickListener(this)
        button6.setOnClickListener(this)
        button7.setOnClickListener(this)
        button8.setOnClickListener(this)
        button9.setOnClickListener(this)
        dotButton.setOnClickListener(this)
        acButton.setOnClickListener(this)
        addButton.setOnClickListener(this)
        subButton.setOnClickListener(this)
        mulButton.setOnClickListener(this)
        divButton.setOnClickListener(this)
        modButton.setOnClickListener(this)
        equalButton.setOnClickListener(this)
    }

    override fun onClick(v: View) {
        val textView = findViewById<TextView>(R.id.textView);

        when (v.id) {
            R.id.button0 -> {
                textView.text = "${textView.text}0"

            }
            R.id.button1 -> {
                textView.text = "${textView.text}1"

            }
            R.id.button2 -> {
                textView.text = "${textView.text}2"

            }

            R.id.button3 -> {
                textView.text = "${textView.text}3"

            }

            R.id.button4 -> {
                textView.text = "${textView.text}4"

            }

            R.id.button5 -> {
                textView.text = "${textView.text}5"

            }

            R.id.button6 -> {
                textView.text = "${textView.text}6"

            }

            R.id.button7 -> {
                textView.text = "${textView.text}7"

            }

            R.id.button8 -> {
                textView.text = "${textView.text}8"

            }

            R.id.button9 -> {
                textView.text = "${textView.text}9"

            }

            R.id.dotButton -> {
                if (textView.text.contains(".").not()) {
                    textView.text = "${textView.text}."
                }
            }

            R.id.acButton -> {
                textView.text = ""
            }

            R.id.addButton -> {
                try {
                    if (!(textView.text.toString()).isNullOrEmpty()) {
                        operand1 = (textView.text.toString()).toBigDecimal()
                        operation = "+"
                        textView.text = null
                    } else {
                        textView.text = "+"
                    }
                } catch (e: NumberFormatException) {
                    textView.text = "+"

                }

            }

            R.id.subButton -> {
                try {
                    if (!(textView.text.toString()).isNullOrEmpty()) {
                        operand1 = (textView.text.toString()).toBigDecimal()
                        operation = "-"
                        textView.text = null
                    } else {
                        textView.text = "-"
                    }
                } catch (e: NumberFormatException) {
                    textView.text = "-"

                }
            }

            R.id.mulButton -> {
                try {
                    if (!(textView.text.toString()).isNullOrEmpty()) {
                        operand1 = (textView.text.toString()).toBigDecimal()
                        operation = "*"
                        textView.text = null
                    }
                } catch (e: NumberFormatException) {
                    textView.text = ""

                }
            }


            R.id.divButton -> {
                try {
                    if (!(textView.text.toString()).isNullOrEmpty()) {
                        operand1 = (textView.text.toString()).toBigDecimal()
                        operation = "/"
                        textView.text = null
                    }

                } catch (e: NumberFormatException) {
                    textView.text = ""

                }
            }

            R.id.modButton -> {
                try {
                    if (!(textView.text.toString()).isNullOrEmpty()) {
                        operand1 = (textView.text.toString()).toBigDecimal()
                        operation = "%"
                        textView.text = null
                    }

                } catch (e: NumberFormatException) {
                    textView.text = ""

                }

            }

            R.id.equalButton -> {
                if ((textView.text.toString()).isNullOrEmpty()) {
                    return
                }

                try {
                    operand2 = (textView.text.toString()).toBigDecimal()

                    when (operation) {
                        "+" -> {
                            textView.text = ((operand1 + operand2).toString())

                        }

                        "-" -> {
                            textView.text = ((operand1 - operand2).toString())

                        }

                        "*" -> {
                            textView.text = ((operand1 * operand2).toString())

                        }

                        "/" -> {
                            var result = (operand1.toDouble() / operand2.toDouble())
                            /* var finalResult = result.toBigDecimal().setScale(1, RoundingMode.UP).toDouble()*/
                            textView.text = result.toString()

                        }
                        "%" -> {
                            textView.text = ((operand1 % operand2).toString())

                        }
                    }
                } catch (e: Exception) {

                }

            }

            else -> {
                textView.text = ""

            }
        }
    }


}
