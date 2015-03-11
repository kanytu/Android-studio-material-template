<?xml version="1.0"?>
<recipe>

    <dependency mavenUrl="com.android.support:support-v4:${targetApi}.+"/>
    <dependency mavenUrl="com.android.support:appcompat-v7:${targetApi}.+"/>
    <dependency mavenUrl="com.android.support:recyclerview-v7:${targetApi}.+"/>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="res/menu/main.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/menu/${menuName}.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <merge from="res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />

    <instantiate from="res/values-v21/styles.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values-v21/styles.xml" />
    <instantiate from="res/values/styles.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

    <merge from="res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
    <#if hasScrimInsets>
    <merge from="res/values/attrs.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/attrs.xml" />
    </#if>

    <copy from="res/drawable-hdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-hdpi" />
    <copy from="res/drawable-mdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-mdpi" />
    <copy from="res/drawable-xhdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-xhdpi" />
    <copy from="res/drawable-xxhdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-xxhdpi" />
    <copy from="res/drawable"
            to="${escapeXmlAttribute(resOut)}/drawable" />

    <instantiate from="res/layout/drawer_row.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/drawer_row.xml" />                
    <instantiate from="res/layout/toolbar_default.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/toolbar_default.xml" />

  
    <#if fragmentLayout == "normal">
    <instantiate from="res/layout/activity_normal.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <#elseif fragmentLayout == "black">
    <instantiate from="res/layout/activity_black.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <#else>
    <instantiate from="res/layout/activity_top.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    </#if>

    <#if navigationDrawer == "normal">
    <instantiate from="res/layout/fragment_navigation_drawer.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${navigationDrawerLayout}.xml" />
    <#else>
    <instantiate from="res/layout/fragment_navigation_google.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${navigationDrawerLayout}.xml" />
    </#if>

    <instantiate from="src/app_package/DrawerActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="src/app_package/NavigationDrawerFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/NavigationDrawerFragment.java" />
    <instantiate from="src/app_package/NavigationDrawerAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/NavigationDrawerAdapter.java" />
    <instantiate from="src/app_package/NavigationDrawerCallbacks.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/NavigationDrawerCallbacks.java" />
    <instantiate from="src/app_package/NavigationItem.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/NavigationItem.java" />
    <#if hasScrimInsets>
    <instantiate from="src/app_package/ScrimInsetsFrameLayout.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ScrimInsetsFrameLayout.java" />
    </#if>
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${navigationDrawerLayout}.xml" />
</recipe>
