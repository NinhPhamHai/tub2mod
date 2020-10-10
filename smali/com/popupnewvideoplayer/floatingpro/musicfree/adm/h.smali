.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;
.super Ljava/lang/Object;
.source "h.java"


# static fields
.field private static mUtils:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;





# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

  
    return-void
.end method

.method public static getLogger(Landroid/content/Context;)Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;
    .locals 1

    .line 25
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;->mUtils:Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;

    if-eqz v0, :cond_0

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;

    invoke-direct {v0, p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/adm/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public SetNative_Click()V
    .locals 2

  
    return-void
.end method

.method public SetNative_Enter()V
    .locals 2

  
    return-void
.end method

.method public SetNative_Impression()V
    .locals 2

  
    return-void
.end method

.method public SetNative_Request()V
    .locals 2

    return-void
.end method
