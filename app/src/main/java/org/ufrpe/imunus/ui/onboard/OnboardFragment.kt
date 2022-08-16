package org.ufrpe.imunus.ui.onboard

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import androidx.fragment.app.Fragment
import androidx.navigation.NavController
import androidx.navigation.fragment.findNavController
import org.ufrpe.imunus.R

class OnboardFragment : Fragment() {
    private val loginButton: Button? by lazy {
        view?.findViewById(R.id.button_onboard_login)
    }
    lateinit var navController: NavController

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_onboard, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        navController = findNavController()
        initListener()
    }

    private fun initListener() {
        initLoginListener()
    }

    private fun initLoginListener() {
        loginButton?.setOnClickListener {
            navController.navigate(R.id.action_onboardFragment_to_loginFragment)
        }
    }
}