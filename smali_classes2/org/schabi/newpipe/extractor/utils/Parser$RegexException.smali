.class public Lorg/schabi/newpipe/extractor/utils/Parser$RegexException;
.super Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegexException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-void
.end method
