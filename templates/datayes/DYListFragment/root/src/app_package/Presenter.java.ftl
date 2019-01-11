package ${packageName};

import android.content.Context;

import com.datayes.common_cloud.webmail.bean.BaseNetBean;
import com.datayes.common_utils.collection.CollectionUtils;
import com.datayes.common_view.inter.contract.IPageContract;
import com.datayes.common_view.presenter.BasePagePresenter;
import com.datayes.iia.module_common.utils.RxJavaUtils;
import com.trello.rxlifecycle2.LifecycleTransformer;

import java.util.ArrayList;
import java.util.List;

import io.reactivex.Observable;
import io.reactivex.observers.DisposableObserver;

/**
 * ${ActivityDes} Presenter
 *
 * @author
 */
class Presenter extends BasePagePresenter<CellBean> {

    Presenter(Context context, IPageContract.IPageView<CellBean> view, LifecycleTransformer lifecycle) {
        super(context, view, lifecycle);
    }

    @Override
    public void start() {

        startRequest(getCurPage(), getPageSize());
    }

    @Override
    public void onDestroy() {

    }

    @Override
    protected void startRequest(int curPage, int pageSize) {

        if (CollectionUtils.isEmpty(mPageView.getList())) {

            mPageView.showLoading();
        }

        // TODO 替换真实接口
        BaseNetBean result = new BaseNetBean();
        Observable.just(result)
                .compose(RxJavaUtils.observableIoToMain())
                .compose(this.getLifecycleTransformer())
                .subscribe(new DisposableObserver<BaseNetBean>() {
                    @Override
                    public void onNext(BaseNetBean result) {

                        mPageView.hideLoading();

                        if (result.getCode() >= 0) {

                            // TODO 替换真实接口数据
                            int maxCount = 9000;
                            List<CellBean> list = new ArrayList<>();
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));
                            list.add(new CellBean().setFirstStr("title").setSecondStr("des"));

                            mPageView.setList(
                                    onSuccess(mPageView.getList(), list, maxCount)
                            );

                        } else {

                            onError(new Throwable(result.getMessage()));
                        }
                    }

                    @Override
                    public void onError(Throwable e) {

                        onFail(e);
                    }

                    @Override
                    public void onComplete() {

                    }
                });
    }

    // TODO 其他代码写在这里


}
