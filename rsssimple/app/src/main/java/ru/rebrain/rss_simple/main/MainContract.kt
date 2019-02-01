package ru.rebrain.rss_simple.main

import ru.rebrain.rss_simple.base.BaseViewInterface
import ru.rebrain.rss_simple.base.presenter.BasePresenter
import ru.rebrain.rss_simple.base.presenter.BasePresenterInterfase

interface MainContract {

    interface Presenter: BasePresenterInterfase<MainContract.View>{
        fun loadedRandomText()
    }

    interface  View: BaseViewInterface{
        fun onTextLoaded(str: String)

    }

}