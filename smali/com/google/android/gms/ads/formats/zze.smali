.class final synthetic Lcom/google/android/gms/ads/formats/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabt;


# instance fields
.field private final zzbkm:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/zze;->zzbkm:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    return-void
.end method


# virtual methods
.method public final setMediaContent(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$MediaContent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/zze;->zzbkm:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$MediaContent;)V

    return-void
.end method