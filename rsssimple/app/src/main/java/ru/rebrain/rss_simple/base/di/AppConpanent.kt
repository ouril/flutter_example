package ru.rebrain.rss_simple.base.di

import android.app.Application
import dagger.Component
import javax.inject.Singleton

@Singleton
@Component(
    modules = [
    AppModule::class
            ]

)
interface AppCompanent {


    fun app(): Application
}


