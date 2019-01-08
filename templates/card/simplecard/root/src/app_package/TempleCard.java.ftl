package ${packageName};

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;

import com.datayes.iia.module_common.base.card.BaseStatusCardView;
import ${applicationPackage}.R;

/**
 * ${cardDes}
 *
 * @author
 */
public class ${cardClassdName} extends BaseStatusCardView {

    public ${cardClassdName}(@NonNull Context context) {
        super(context);
    }

    public ${cardClassdName}(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public ${cardClassdName}(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override
    protected int getLayout() {
        return R.layout.paper_goodnewshot_chart_card;
    }

    @Override
    protected void onViewCreated(View view) {

        // TODO view操作
    }

    @Override
    public void destroy() {

    }
}
