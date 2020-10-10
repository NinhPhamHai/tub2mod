.class Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$2;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 170
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;

    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;->recycleViewAdapter:Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e7

    .line 171
    iput v1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity;->page:I

    .line 172
    sget-object p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->NO_RESULT:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    invoke-virtual {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/rd/RadioListActivity$RecycleViewAdapter;->setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    :cond_0
    return-void
.end method
