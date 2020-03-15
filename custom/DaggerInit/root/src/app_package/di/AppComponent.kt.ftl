package ${escapeKotlinIdentifiers(packageName)}.di

import android.app.Application
import dagger.BindsInstance
import dagger.Component
import dagger.android.AndroidInjectionModule
import javax.inject.Singleton
import ${escapeKotlinIdentifiers(packageName)}.${applicationClass}

@Singleton
@Component(
    modules = [
        AndroidInjectionModule::class,
        AppModule::class,
        ActivityModule::class
    ]
)
interface AppComponent{
    @Component.Builder
    interface Builder{
        fun build(): AppComponent

        @BindsInstance
        fun applicationBind(app: Application):Builder
    }

    fun inject(tripHelperApp: ${applicationClass})
}