package ru.rebrain.rss_simple.base

import android.os.Bundle
import android.support.annotation.LayoutRes
import android.support.v7.app.AppCompatActivity

abstract class BaseActivity: AppCompatActivity(), BaseViewInterface {

    @get:LayoutRes
    protected abstract val layputResId: Int


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(layputResId)
    }

    protected abstract fun init(state: Bundle?)

}