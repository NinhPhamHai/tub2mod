.class Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$3;
.super Ljava/lang/Object;
.source "d.java"

# interfaces
.implements Lcom/popupnewvideoplayer/floatingpro/musicfree/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->onCreateFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;


# direct methods
.method constructor <init>(Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNegativeClick()V
    .locals 0

    return-void
.end method

.method public OnPositiveClick()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d$3;->this$0:Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;

    invoke-virtual {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/fr/d;->loadAllData()V

    return-void
.end method
