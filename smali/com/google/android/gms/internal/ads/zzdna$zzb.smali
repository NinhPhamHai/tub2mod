.class public final enum Lcom/google/android/gms/internal/ads/zzdna$zzb;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdna;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdna$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdry;"
    }
.end annotation


# static fields
.field private static final zzen:Lcom/google/android/gms/internal/ads/zzdrx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdrx<",
            "Lcom/google/android/gms/internal/ads/zzdna$zzb;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzhcw:Lcom/google/android/gms/internal/ads/zzdna$zzb;

.field public static final enum zzhcx:Lcom/google/android/gms/internal/ads/zzdna$zzb;

.field public static final enum zzhcy:Lcom/google/android/gms/internal/ads/zzdna$zzb;

.field public static final enum zzhcz:Lcom/google/android/gms/internal/ads/zzdna$zzb;

.field public static final enum zzhda:Lcom/google/android/gms/internal/ads/zzdna$zzb;

.field public static final enum zzhdb:Lcom/google/android/gms/internal/ads/zzdna$zzb;

.field private static final synthetic zzhdc:[Lcom/google/android/gms/internal/ads/zzdna$zzb;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_KEYMATERIAL"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzdna$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcw:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;

    const/4 v2, 0x1

    const-string v3, "SYMMETRIC"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzdna$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcx:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;

    const/4 v3, 0x2

    const-string v4, "ASYMMETRIC_PRIVATE"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzdna$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcy:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;

    const/4 v4, 0x3

    const-string v5, "ASYMMETRIC_PUBLIC"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzdna$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcz:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;

    const/4 v5, 0x4

    const-string v6, "REMOTE"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/ads/zzdna$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhda:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;

    const/4 v6, 0x5

    const-string v7, "UNRECOGNIZED"

    const/4 v8, -0x1

    invoke-direct {v0, v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzdna$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhdb:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    const/4 v0, 0x6

    .line 30
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdna$zzb;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcw:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcx:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcy:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcz:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhda:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhdb:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhdc:[Lcom/google/android/gms/internal/ads/zzdna$zzb;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdnc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzen:Lcom/google/android/gms/internal/ads/zzdrx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdna$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhdc:[Lcom/google/android/gms/internal/ads/zzdna$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdna$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdna$zzb;

    return-object v0
.end method

.method public static zzeo(I)Lcom/google/android/gms/internal/ads/zzdna$zzb;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhda:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    return-object p0

    .line 9
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcz:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    return-object p0

    .line 8
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcy:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    return-object p0

    .line 7
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcx:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhcw:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    const-class v1, Lcom/google/android/gms/internal/ads/zzdna$zzb;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhdb:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    if-eq p0, v1, :cond_0

    const-string v1, " number="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzae()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " name="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzae()I
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhdb:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    if-eq p0, v0, :cond_0

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method