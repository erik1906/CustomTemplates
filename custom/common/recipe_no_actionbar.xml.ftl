<recipe folder="root://activities/common">
    <#if isDynamicFeature>
    <merge from="root/res/values/no_actionbar_styles.xml.ftl"
             to="${escapeXmlAttribute(baseFeatureResOut)}/values/styles.xml" />
    <#else>
    <merge from="root/res/values/no_actionbar_styles.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
    </#if>
</recipe>
