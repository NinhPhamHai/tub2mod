.class final synthetic Lcom/google/android/gms/internal/ads/zzckt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgf;


# instance fields
.field private final zzfzk:Lcom/google/android/gms/internal/ads/zzczl;

.field private final zzfzs:Lcom/google/android/gms/internal/ads/zzcku;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcku;Lcom/google/android/gms/internal/ads/zzczl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckt;->zzfzs:Lcom/google/android/gms/internal/ads/zzcku;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckt;->zzfzk:Lcom/google/android/gms/internal/ads/zzczl;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdhe;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckt;->zzfzs:Lcom/google/android/gms/internal/ads/zzcku;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckt;->zzfzk:Lcom/google/android/gms/internal/ads/zzczl;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcaj;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcku;->zza(Lcom/google/android/gms/internal/ads/zzczl;Lcom/google/android/gms/internal/ads/zzcaj;)Lcom/google/android/gms/internal/ads/zzdhe;

    move-result-object p1

    return-object p1
.end method
