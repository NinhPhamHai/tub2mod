.class Lcom/mobeta/android/dslv/DragSortController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortController;


# direct methods
.method constructor <init>(Lcom/mobeta/android/dslv/DragSortController;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 473
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {p1}, Lcom/mobeta/android/dslv/DragSortController;->access$000(Lcom/mobeta/android/dslv/DragSortController;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {p1}, Lcom/mobeta/android/dslv/DragSortController;->access$100(Lcom/mobeta/android/dslv/DragSortController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 474
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {p1}, Lcom/mobeta/android/dslv/DragSortController;->access$200(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result p1

    .line 475
    div-int/lit8 p1, p1, 0x5

    .line 476
    iget-object p4, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {p4}, Lcom/mobeta/android/dslv/DragSortController;->access$300(Lcom/mobeta/android/dslv/DragSortController;)F

    move-result p4

    const/4 v0, 0x1

    cmpl-float p4, p3, p4

    if-lez p4, :cond_0

    .line 477
    iget-object p4, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {p4}, Lcom/mobeta/android/dslv/DragSortController;->access$400(Lcom/mobeta/android/dslv/DragSortController;)I

    move-result p4

    neg-int p1, p1

    if-le p4, p1, :cond_1

    .line 478
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {p1}, Lcom/mobeta/android/dslv/DragSortController;->access$200(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lcom/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    goto :goto_0

    .line 480
    :cond_0
    iget-object p4, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {p4}, Lcom/mobeta/android/dslv/DragSortController;->access$300(Lcom/mobeta/android/dslv/DragSortController;)F

    move-result p4

    neg-float p4, p4

    cmpg-float p4, p3, p4

    if-gez p4, :cond_1

    .line 481
    iget-object p4, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {p4}, Lcom/mobeta/android/dslv/DragSortController;->access$400(Lcom/mobeta/android/dslv/DragSortController;)I

    move-result p4

    if-ge p4, p1, :cond_1

    .line 482
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {p1}, Lcom/mobeta/android/dslv/DragSortController;->access$200(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lcom/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 485
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {p1, p2}, Lcom/mobeta/android/dslv/DragSortController;->access$102(Lcom/mobeta/android/dslv/DragSortController;Z)Z

    :cond_2
    return p2
.end method
