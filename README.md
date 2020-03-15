# CustomTemplates[ ⚠ WORK IN PROGRESS]

This repository contains templates to speed up the development of 
android application, this templates ar divided in:

- Init Templates: This templates help with the initial set up for some of the libraries 
commonly used in android, like Dagger, Room and Retrofit; 
- Component templates: This templates generate classe and files for the Fragments, ViewModels and Module 
based on the the MVVM and clean architecure 

## Init Templates

This templates generate classes and dependencies for some of the 

To use this templates copy the custom templates in your android plugins path

Windows ```{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/```

Mac ```/Applications/Android Studio.app/Contents/plugins/android/lib/templates/```

### Dagger init

You can find this template in `File -> new -> Initialize -> Dagger Init`

This template set up an application with Dagger and Timber (Optional) generating this structure

- di
  - AppComponent
  - ActivityModule
  - AppModule
  - AppInjector
  - Injectable
  - ViewModelKey
- ApplicationClass


