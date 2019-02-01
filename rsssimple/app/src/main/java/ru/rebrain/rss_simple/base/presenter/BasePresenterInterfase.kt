package ru.rebrain.rss_simple.base.presenter

import ru.rebrain.rss_simple.base.BaseViewInterface

interface BasePresenterInterfase<V : BaseViewInterface> {

    val isAttached: Boolean

    fun attach(view: V)

    fun detach()
}