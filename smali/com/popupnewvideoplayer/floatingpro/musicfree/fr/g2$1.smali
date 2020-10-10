.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2$1;
.super Ljava/lang/Object;
.source "g2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 93
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2$1;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2;

    iget-object p1, p1, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/g2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
