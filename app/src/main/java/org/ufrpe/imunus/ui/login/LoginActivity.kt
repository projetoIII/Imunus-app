package org.ufrpe.imunus.ui.login

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity
import com.google.android.material.appbar.MaterialToolbar
import org.ufrpe.imunus.R
import org.ufrpe.imunus.ui.home.HomeActivity

class LoginActivity : AppCompatActivity() {

    private val loginButton: Button? by lazy {
        findViewById(R.id.button_login_sign_in)
    }

    private val loginToolbar: MaterialToolbar? by lazy {
        findViewById(R.id.toolbar_login)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_login)
        initListener()
    }


    private fun initLoginButtonListener() {
        loginButton?.setOnClickListener {
            openHomeActivity()
        }
    }

    private fun openHomeActivity() {
        startActivity(Intent(this@LoginActivity, HomeActivity::class.java))
    }

    private fun initListener() {
        initToolbarListener()
        initLoginButtonListener()
    }

    private fun initToolbarListener() {
        loginToolbar?.setNavigationOnClickListener {
            finish()
        }
    }
}