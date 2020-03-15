package ${escapeKotlinIdentifiers(packageName)}

import android.app.Application
import ${escapeKotlinIdentifiers(packageName)}.di.AppInjector
import dagger.android.DispatchingAndroidInjector
import dagger.android.HasAndroidInjector
import javax.inject.Inject
<#if withTimber>
    import timber.log.Timber
</#if>


class ${applicationClass} : Application(), HasAndroidInjector {

    @Inject
    lateinit var dispatchingAndroidInjector: DispatchingAndroidInjector<Any>


    override fun onCreate() {
        super.onCreate()
        
        <#if withTimber>
            if(BuildConfig.DEBUG){
                Timber.plant(Timber.DebugTree())
            }
        </#if>

        AppInjector.init(this)

    }

    override fun androidInjector() = dispatchingAndroidInjector


}