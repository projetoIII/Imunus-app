package org.ufrpe.imunus.ui.login

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.Toast
import android.widget.Toolbar
import androidx.fragment.app.Fragment
import androidx.navigation.NavController
import androidx.navigation.fragment.findNavController
import com.google.android.material.appbar.MaterialToolbar
import org.ufrpe.imunus.R

class LoginFragment : Fragment() {

    private val loginButton: Button? by lazy {
        view?.findViewById(R.id.button_login_sign_in)
    }

    private val loginToolbar: MaterialToolbar? by lazy {
        view?.findViewById(R.id.toolbar_login)
    }

    lateinit var navController: NavController

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_login, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        navController = findNavController()
        initListener()
    }

    private fun initLoginButtonListener() {
        loginButton?.setOnClickListener {
            Toast.makeText(context, "Noting Selected", Toast.LENGTH_SHORT).show()
        }
    }

    private fun initListener() {
        initToolbarListener()
        initLoginButtonListener()
    }

    private fun initToolbarListener() {
        loginToolbar?.setNavigationOnClickListener {
            navController.popBackStack()
        }
    }
}