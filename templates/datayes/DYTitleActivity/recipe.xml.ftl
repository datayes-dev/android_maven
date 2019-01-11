<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <!-- <#include "../common/recipe_manifest.xml.ftl" /> -->
    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <@kt.addAllKotlinDependencies />

<#if generateLayout>

    <instantiate from="root/res/layout/modulename_main_activity.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<#if HasTitle>

    <merge from="root/res/values/strings.xml.ftl"
          to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

</#if>

    <instantiate from="root/src/app_package/SimpleActivity.${ktOrJavaExt}.ftl"
           to="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />

</recipe>
