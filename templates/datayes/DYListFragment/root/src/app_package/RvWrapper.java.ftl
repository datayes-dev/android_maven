package ${packageName};

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.datayes.common_view.holder.BaseHolder;
import ${applicationPackage}.R;
<#if isHorizontalScroll>
import com.datayes.iia.module_common.base.wrapper.BaseHorizontalScrollRecyclerWrapper;
<#else>
import com.datayes.iia.module_common.base.wrapper.BaseMoreRecyclerWrapper;
</#if>
import com.datayes.iia.module_common.view.EThemeColor;

/**
 * ${ActivityDes} RvWrapper
 *
 * @author
 */
// TODO wrapper可以根据去要替换 BaseRecyclerWrapper BaseListLinearLayoutWrapper BaseVLayoutWrapper BaseMoreVaLyoutWrapper BaseBeanVLayoutWrapper
<#if isHorizontalScroll>
class RvWrapper extends BaseHorizontalScrollRecyclerWrapper<CellBean> {
<#else>
class RvWrapper extends BaseMoreRecyclerWrapper<CellBean> {
</#if>

    RvWrapper(@NonNull Context context, @NonNull View rootView, EThemeColor themeColor) {
        super(context, rootView, themeColor);
    }

<#if isHorizontalScroll>
    @Override
    protected BaseHolder<CellBean> createScrollitemHolder(Context context, View view, int viewType, RecyclerView.ViewHolder viewHolder) {
        return new CellHolder(context, view);
    }
<#else>
    @Override
    protected BaseHolder<CellBean> createItemHolder(Context context, View view, int viewType, RecyclerView.ViewHolder viewHolder) {
        return new CellHolder(context, view);
    }
</#if>

    @Override
    protected View createItemView(Context context, ViewGroup parent, int viewType) {
        return LayoutInflater.from(context).inflate(R.layout.${layoutNameItem}, parent, false);
    }

}
