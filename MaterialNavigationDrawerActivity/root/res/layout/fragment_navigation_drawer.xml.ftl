<android.support.v7.widget.RecyclerView
    android:id="@+id/drawerList"
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:clickable="true"
    android:scrollbars="vertical"
    <#if fragmentLayout == "top">android:fitsSystemWindows="true"</#if>
    android:layout_height="match_parent"
    android:background="@color/myDrawerBackground"/>