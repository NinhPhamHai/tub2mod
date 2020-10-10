.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$2;
.super Ljava/lang/Object;
.source "e.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;)V

    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 151
    const-class v1, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->toObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/module/PlaylistBean;

    .line 152
    iget-object v1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    invoke-static {v1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->access$100(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;->access$200(Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 140
    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ac/e$2;->onSuccess(Lcom/google/firebase/firestore/QuerySnapshot;)V

    return-void
.end method
