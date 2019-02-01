package ru.rebrain.rss_simple.main

import ru.rebrain.rss_simple.base.presenter.BasePresenter
import java.util.*

class MainPresenter: BasePresenter<MainContract.View>(), MainContract.Presenter {

    override fun loadedRandomText() {
        var random = Random()
        view?.onTextLoaded(helloList[random.nextInt()])
        println("0000000")

    }

    private var  helloList = listOf("Hello", "go")

}