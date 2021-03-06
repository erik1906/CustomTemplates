package ${escapeKotlinIdentifiers(packageName)}.di

import dagger.Module
import dagger.android.ContributesAndroidInjector

@Module
abstract class ActivityModule{


    /* Add the activity binding 
        Example: 
        @ContributesAndroidInjector(modules = [FragmentModule::class])
        abstract fun contributeMainActivity(): MainActivity
    */
}