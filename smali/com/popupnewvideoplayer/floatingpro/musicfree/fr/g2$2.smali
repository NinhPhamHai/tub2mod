.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2$2;
.super Ljava/lang/Object;
.source "g2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2;->initSearchEdit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 143
    iget-object p2, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2$2;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2;->access$000(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2;Ljava/lang/String;)V

    return-void
.end method
