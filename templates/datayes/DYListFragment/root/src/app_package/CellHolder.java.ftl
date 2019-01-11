package ${packageName};

import android.content.Context;
import android.view.View;

import com.datayes.common_view.holder.BaseClickHolder;
import com.datayes.common_view.holder.BaseHolder;
import com.datayes.iia.module_common.view.holder.string.StringHolder;

/**
 * ${ActivityDes} CellHolder
 *
 * @author
 */
class CellHolder extends StringHolder<CellBean> {

    CellHolder(Context context, View view) {
        super(context, view, new BaseClickHolder.IClickListener<CellBean>() {

            @Override
            public void onHolderClicked(BaseHolder<CellBean> baseHolder) {

                // TODO 点击事件

            }
        });
    }

    @Override
    protected void setContent(Context context, CellBean bean) {
        super.setContent(context, bean);

        // TODO 额外cell设置
    }

}
