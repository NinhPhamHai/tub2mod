.class Lcom/r0adkll/slidr/widget/SliderPanel$6;
.super Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;
.source "SliderPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/r0adkll/slidr/widget/SliderPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/r0adkll/slidr/widget/SliderPanel;


# direct methods
.method constructor <init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-direct {p0}, Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 478
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$1100(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result p1

    neg-int p1, p1

    iget-object p3, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p3}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$1100(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$700(III)I

    move-result p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    .line 483
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$1100(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result p1

    return p1
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .line 539
    invoke-super {p0, p1}, Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 540
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v0}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v0}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;->onStateChanged(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$500(Lcom/r0adkll/slidr/widget/SliderPanel;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-nez p1, :cond_2

    .line 545
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;->onOpened()V

    goto :goto_0

    .line 548
    :cond_2
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;->onClosed()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 528
    invoke-super/range {p0 .. p5}, Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 529
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$1100(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 531
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;->onSlideChange(F)V

    .line 534
    :cond_0
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1, p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$900(Lcom/r0adkll/slidr/widget/SliderPanel;F)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5

    .line 488
    invoke-super {p0, p1, p2, p3}, Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 492
    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$200(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/model/SlidrConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/r0adkll/slidr/model/SlidrConfig;->getDistanceThreshold()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 493
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$200(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/model/SlidrConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/r0adkll/slidr/model/SlidrConfig;->getVelocityThreshold()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float p2, p2, v2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v2, 0x0

    cmpl-float v4, p3, v2

    if-lez v4, :cond_2

    .line 498
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$200(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/model/SlidrConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/r0adkll/slidr/model/SlidrConfig;->getVelocityThreshold()F

    move-result v2

    cmpl-float p3, p3, v2

    if-lez p3, :cond_1

    if-nez p2, :cond_1

    .line 499
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$1100(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result v3

    goto :goto_2

    :cond_1
    if-le v0, v1, :cond_6

    .line 501
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$1100(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result v3

    goto :goto_2

    :cond_2
    cmpg-float v2, p3, v2

    if-gez v2, :cond_4

    .line 506
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$200(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/model/SlidrConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/r0adkll/slidr/model/SlidrConfig;->getVelocityThreshold()F

    move-result v2

    cmpl-float p3, p3, v2

    if-lez p3, :cond_3

    if-nez p2, :cond_3

    .line 507
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$1100(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result p2

    goto :goto_1

    :cond_3
    neg-int p2, v1

    if-ge v0, p2, :cond_6

    .line 509
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$1100(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result p2

    goto :goto_1

    :cond_4
    if-le v0, v1, :cond_5

    .line 515
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$1100(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result v3

    goto :goto_2

    :cond_5
    neg-int p2, v1

    if-ge v0, p2, :cond_6

    .line 517
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$1100(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result p2

    :goto_1
    neg-int v3, p2

    .line 522
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$400(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/util/ViewDragHelper;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p2, p1, v3}, Lcom/r0adkll/slidr/util/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 523
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$500(Lcom/r0adkll/slidr/widget/SliderPanel;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$200(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/model/SlidrConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/r0adkll/slidr/model/SlidrConfig;->isEdgeOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$6;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$1000(Lcom/r0adkll/slidr/widget/SliderPanel;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method