.class final Lcom/google/android/gms/internal/ads/zzama;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;


# instance fields
.field private final synthetic zzddw:Lcom/google/android/gms/internal/ads/zzagp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaly;Lcom/google/android/gms/internal/ads/zzagp;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzama;->zzddw:Lcom/google/android/gms/internal/ads/zzagp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationFailed(Ljava/lang/String;)V
    .locals 1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzama;->zzddw:Lcom/google/android/gms/internal/ads/zzagp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzagp;->onInitializationFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onInitializationSucceeded()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzama;->zzddw:Lcom/google/android/gms/internal/ads/zzagp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagp;->onInitializationSucceeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method