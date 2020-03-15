<?xml version="1.0"?>
<#import "root://other/common/kotlin_macros.ftl" as kt>
<recipe>
  
  <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <@kt.addAllKotlinDependencies />
    <dependency mavenUrl="com.google.dagger:dagger:2.27" />
    <dependency mavenUrl="com.google.dagger:dagger-android-support:2.24" />
    <dependency mavenUrl="com.google.dagger:dagger-compiler:2.27" gradleConfiguration="kapt" />
    <dependency mavenUrl="com.google.dagger:dagger-android-processor:2.27" gradleConfiguration="kapt" />
    <apply plugin="kotlin-kapt" />

    <instantiate from="root/src/app_package/di/AppComponent.${ktOrJavaExt}.ftl"
                    to="${escapeXmlAttribute(srcOut)}/di/AppComponent.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/di/AppInjector.${ktOrJavaExt}.ftl"
                    to="${escapeXmlAttribute(srcOut)}/di/AppInjector.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/Application.${ktOrJavaExt}.ftl"
                    to="${escapeXmlAttribute(srcOut)}/${applicationClass}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/di/Injectable.${ktOrJavaExt}.ftl"
                    to="${escapeXmlAttribute(srcOut)}/di/Injectable.${ktOrJavaExt}" />
    
    <instantiate from="root/src/app_package/di/ViewModelKey.${ktOrJavaExt}.ftl"
                    to="${escapeXmlAttribute(srcOut)}/di/ViewModelKey.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/di/AppModule.${ktOrJavaExt}.ftl"
                    to="${escapeXmlAttribute(srcOut)}/di/AppModule.${ktOrJavaExt}" />
    
    <instantiate from="root/src/app_package/di/ActivityModule.${ktOrJavaExt}.ftl"
                    to="${escapeXmlAttribute(srcOut)}/di/ActivityModule.${ktOrJavaExt}" />

    <#if withTimber>
        <dependency mavenUrl="com.jakewharton.timber:timber:4.7.1" />
    </#if>
</recipe>
