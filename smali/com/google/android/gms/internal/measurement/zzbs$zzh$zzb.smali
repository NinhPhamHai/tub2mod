.class public final enum Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@17.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzfg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbs$zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzfg;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

.field private static final enum zzb:Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfj<",
            "Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zze:[Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;


# instance fields
.field private final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RADS"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    const/4 v3, 0x2

    const-string v4, "PROVISIONING"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    .line 23
    new-array v0, v3, [Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->zze:[Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->zzd:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->zze:[Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    return-object p0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbu;->zza:Lcom/google/android/gms/internal/measurement/zzfi;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzbs$zzh$zzb;->zzd:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
