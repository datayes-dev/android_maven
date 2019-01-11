<?xml version="1.0"?>
<recipe>

	<instantiate from="root/res/layout/temple_card.xml.ftl"
           to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

	<instantiate from="root/src/app_package/TempleCard.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${cardClassdName}.java" />
	<open file="${escapeXmlAttribute(srcOut)}/${cardClassdName}.java" /> -->
    
</recipe>
