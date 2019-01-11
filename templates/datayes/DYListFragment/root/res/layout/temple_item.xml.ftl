<?xml version="1.0" encoding="utf-8"?>
<#if isHorizontalScroll>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="40dp"
    android:layout_marginLeft="@dimen/border_margin"
    android:orientation="horizontal">

    <TextView
        android:id="@+id/tv_first"
        android:layout_width="60dp"
        android:layout_height="match_parent"
        android:gravity="center_vertical"
        android:tag="@string/holder_string_first" />

    <com.datayes.common_view.widget.scrollview.ListenerHorizontalScrollView
        android:id="@+id/common_hsv_scrollview"
        android:layout_width="match_parent"
        android:layout_height="40dp"
        android:overScrollMode="never"
        android:fillViewport="true"
        android:layout_toRightOf="@+id/tv_first"
        android:scrollbars="none">

        <LinearLayout
            android:layout_width="wrap_content"
            android:layout_height="40dp"
            android:orientation="horizontal">

            <TextView
                android:layout_width="100dp"
                android:layout_height="40dp"
                android:layout_marginBottom="10dp"
                android:gravity="center_vertical"
                android:tag="@string/holder_string_second"
                android:text="@string/no_data" />

            <TextView
                android:layout_width="100dp"
                android:layout_height="40dp"
                android:layout_marginBottom="10dp"
                android:gravity="center_vertical"
                android:tag="@string/holder_string_third"
                android:text="@string/no_data" />

            <TextView
                android:layout_width="100dp"
                android:layout_height="40dp"
                android:layout_marginBottom="10dp"
                android:gravity="center_vertical"
                android:tag="@string/holder_string_fourth"
                android:text="@string/no_data" />

            <TextView
                android:layout_width="100dp"
                android:layout_height="40dp"
                android:layout_marginBottom="10dp"
                android:gravity="center_vertical"
                android:tag="@string/holder_string_fifth"
                android:text="@string/no_data" />

        </LinearLayout>

    </com.datayes.common_view.widget.scrollview.ListenerHorizontalScrollView>

    <View
        android:layout_width="match_parent"
        android:layout_height="1px"
        android:layout_alignParentBottom="true"
        android:layout_marginRight="@dimen/border_margin"
        android:background="@color/color_H3" />

</RelativeLayout>
<#else>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:layout_marginLeft="@dimen/border_margin"
    android:layout_marginRight="@dimen/border_margin"
    android:orientation="vertical">

    <TextView
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_marginTop="10dp"
        android:tag="@string/holder_string_first"
        android:text="@string/no_data"
        android:textSize="@dimen/t7"
        android:textStyle="bold" />

    <TextView
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_marginBottom="10dp"
        android:tag="@string/holder_string_second"
        android:text="@string/no_data" />

    <View
        android:layout_width="match_parent"
        android:layout_height="1px"
        android:background="@color/color_H3" />

</LinearLayout>
</#if>