.class public Lio/fabric/sdk/android/services/settings/AppSettingsData;
.super Ljava/lang/Object;
.source "AppSettingsData.java"


# instance fields
.field public final icon:Lio/fabric/sdk/android/services/settings/AppIconSettingsData;

.field public final identifier:Ljava/lang/String;

.field public final ndkReportsUrl:Ljava/lang/String;

.field public final reportsUrl:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field public final updateRequired:Z

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/fabric/sdk/android/services/settings/AppIconSettingsData;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->identifier:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->status:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->url:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->reportsUrl:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->ndkReportsUrl:Ljava/lang/String;

    .line 52
    iput-boolean p6, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->updateRequired:Z

    .line 53
    iput-object p7, p0, Lio/fabric/sdk/android/services/settings/AppSettingsData;->icon:Lio/fabric/sdk/android/services/settings/AppIconSettingsData;

    return-void
.end method
