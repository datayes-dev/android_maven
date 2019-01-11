<?xml version="1.0"?>
<recipe>
 
<#if generateLayout>

    <instantiate from="root/res/layout/modulename_main_fragment.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/res/layout/temple_item.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutNameItem}.xml" />

</#if>

	<instantiate from="root/src/app_package/CellBean.java.ftl"
           to="${escapeXmlAttribute(srcOut)}/CellBean.java" />
    <instantiate from="root/src/app_package/CellHolder.java.ftl"
           to="${escapeXmlAttribute(srcOut)}/CellHolder.java" />
    <instantiate from="root/src/app_package/Presenter.java.ftl"
           to="${escapeXmlAttribute(srcOut)}/Presenter.java" />
    <instantiate from="root/src/app_package/RvWrapper.java.ftl"
           to="${escapeXmlAttribute(srcOut)}/RvWrapper.java" />              

    <instantiate from="root/src/app_package/SimpleFragment.java.ftl"
           to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</recipe>
