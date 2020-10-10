.class public Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field public static instance:Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;


# instance fields
.field public activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;
    .locals 1

    .line 14
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->instance:Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;

    invoke-direct {v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;-><init>()V

    sput-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->instance:Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;

    .line 17
    :cond_0
    sget-object v0, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->instance:Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;

    return-object v0
.end method

.method private isStoragePermissionGranted()Z
    .locals 3

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->checkPermission([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private requesttoragePermission(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->requestPermission([Ljava/lang/String;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public checkPermission([Ljava/lang/String;)Z
    .locals 6
    .param p1, "arrPermission"    # [Ljava/lang/String;

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 31
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 32
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 33
    return v1

    .line 31
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 21
    iput-object p1, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->activity:Landroid/app/Activity;

    .line 22
    invoke-direct {p0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->isStoragePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->requesttoragePermission(I)V

    .line 27
    :goto_0
    return-void
.end method

.method public requestPermission([Ljava/lang/String;I)V
    .locals 2
    .param p1, "arrPermission"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/popupnewvideoplayer/floatingpro/musicfree/PermissionUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 44
    :cond_0
    return-void
.end method
