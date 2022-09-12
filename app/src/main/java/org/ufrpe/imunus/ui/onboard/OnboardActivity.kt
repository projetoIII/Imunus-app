package org.ufrpe.imunus.ui.onboard

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity
import org.ufrpe.imunus.R
import org.ufrpe.imunus.ui.login.LoginActivity

class OnboardActivity : AppCompatActivity() {
    private val loginButton: Button? by lazy {
        findViewById(R.id.button_onboard_login)
    }

    private val registerButton: Button? by lazy {
        findViewById(R.id.button_onboard_register)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_onboard)
        initListener()
    }

    private fun initListener() {
        initLoginListener()
    }

    private fun initLoginListener() {
        loginButton?.setOnClickListener {
            openLoginActivity()
        }
    }

    private fun openLoginActivity() {
        startActivity(Intent(this@OnboardActivity, LoginActivity::class.java))
    }
}