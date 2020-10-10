.class Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$4;
.super Ljava/lang/Object;
.source "f.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    iput-boolean v1, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->hasResult:Z

    .line 179
    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->getLoadingSate()Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    move-result-object v0

    sget-object v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;->NO_RESULT:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;

    if-eq v0, v2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    iget-object v0, v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-virtual {v0, v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setLoadingSate(Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/o;)V

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 185
    const-class v2, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->toObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/e;

    .line 187
    iget-object v2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    invoke-static {v2}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    iget-object v0, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-static {p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;->setDataList(Ljava/util/List;)V

    .line 191
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->mm:Lcom/popupnewvideoplayer/floatingpro/musicfree/ad/m;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 195
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting documents: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "f"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_1
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f$4;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;

    iput-boolean v1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/ho/f;->isLoading:Z

    return-void
.end method
