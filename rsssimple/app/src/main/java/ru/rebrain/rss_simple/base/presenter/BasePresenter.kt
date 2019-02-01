package ru.rebrain.rss_simple.base.presenter

import ru.rebrain.rss_simple.base.BaseViewInterface

open class BasePresenter<V: BaseViewInterface> : BasePresenterInterfase<V>{

    var view: V? = null

    override val isAttached: Boolean = view != null

    override fun attach(view: V) {
        this.view = view
    }

    override fun detach() {
        view = null
    }
}