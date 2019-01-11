<?xml version="1.0" encoding="utf-8"?>
 <#if needRefresh>
<#if isHorizontalScroll>
<com.datayes.iia.module_common.view.pulltorefresh.PullToRefreshFrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/common_pull_to_refresh"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">

        <include layout="@layout/${layoutNameItem}" />

        <FrameLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:orientation="vertical">

            <com.datayes.iia.module_common.view.pulltorefresh.PullToLoadMoreRecyclerView
                android:id="@+id/common_recyclerview"
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:divider="@null"
                android:overScrollMode="never" />

            <com.datayes.iia.module_common.view.statusview.StatusView
                android:id="@+id/common_status_view"
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:visibility="gone" />

        </FrameLayout>

    </LinearLayout>

</com.datayes.iia.module_common.view.pulltorefresh.PullToRefreshFrameLayout>
<#else>
<com.datayes.iia.module_common.view.pulltorefresh.PullToRefreshFrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/common_pull_to_refresh"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">

    <FrameLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">

        <com.datayes.iia.module_common.view.pulltorefresh.PullToLoadMoreRecyclerView
            android:id="@+id/common_recyclerview"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:divider="@null"
            android:overScrollMode="never" />

        <com.datayes.iia.module_common.view.statusview.StatusView
            android:id="@+id/common_status_view"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:visibility="gone" />

    </FrameLayout>

</com.datayes.iia.module_common.view.pulltorefresh.PullToRefreshFrameLayout>
</#if>
<#else>
<#if isHorizontalScroll>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">

    <include layout="@layout/${layoutNameItem}" />

    <FrameLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">

        <com.datayes.iia.module_common.view.pulltorefresh.PullToLoadMoreRecyclerView
            android:id="@+id/common_recyclerview"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:divider="@null"
            android:overScrollMode="never" />

        <com.datayes.iia.module_common.view.statusview.StatusView
            android:id="@+id/common_status_view"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:visibility="gone" />

    </FrameLayout>

</LinearLayout>
<#else>
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">

    <com.datayes.iia.module_common.view.pulltorefresh.PullToLoadMoreRecyclerView
        android:id="@+id/common_recyclerview"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:divider="@null"
        android:overScrollMode="never" />

    <com.datayes.iia.module_common.view.statusview.StatusView
        android:id="@+id/common_status_view"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:visibility="gone" />

</FrameLayout>
</#if>    
</#if>
