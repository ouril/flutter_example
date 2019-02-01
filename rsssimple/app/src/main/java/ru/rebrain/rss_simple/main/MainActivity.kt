package ru.rebrain.rss_simple.main

import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*
import ru.rebrain.rss_simple.R
import ru.rebrain.rss_simple.base.BaseActivity

class MainActivity : BaseActivity(), MainContract.View {

    override val layputResId: Int
        get() = R.layout.activity_main


    override fun onDestroy() {
        presenter.detach()
        super.onDestroy()

    }

    override fun onTextLoaded(str: String) {
        hello_tv.text = str

    }

    private lateinit var presenter: MainContract.Presenter

    override fun init(state: Bundle?) {

        println("--------------------------------------")
        presenter = MainPresenter()
        presenter.attach(this)
        presenter.loadedRandomText()
        hello_tv.setOnClickListener {
            onTextLoaded("fgsdd")
        }

    }


}
