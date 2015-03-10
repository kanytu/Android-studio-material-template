<?xml version="1.0"?>
<globals>
    <global id="manifestOut" value="${manifestDir}" />
    <global id="useSupport" type="boolean" value="${(minApiLevel lt 11)?string}" />
    <global id="hasScrimInsets" type="boolean" value="${(fragmentLayout == 'top' && buildApi gte 19)?string}" />
    <global id="resOut" value="${resDir}" />
    <global id="menuName" value="${classToResource(activityClass)}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />
</globals>
