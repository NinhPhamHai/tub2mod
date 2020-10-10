.class public Lorg/mozilla/javascript/ast/ScriptNode;
.super Lorg/mozilla/javascript/ast/Scope;
.source "ScriptNode.java"


# instance fields
.field private EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/FunctionNode;",
            ">;"
        }
    .end annotation
.end field

.field private compilerData:Ljava/lang/Object;

.field private encodedSource:Ljava/lang/String;

.field private encodedSourceEnd:I

.field private encodedSourceStart:I

.field private endLineno:I

.field private functions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/FunctionNode;",
            ">;"
        }
    .end annotation
.end field

.field private isConsts:[Z

.field private paramCount:I

.field private regexps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/RegExpLiteral;",
            ">;"
        }
    .end annotation
.end field

.field private sourceName:Ljava/lang/String;

.field private symbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private tempNumber:I

.field private variableNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceStart:I

    .line 23
    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceEnd:I

    .line 26
    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->endLineno:I

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->EMPTY_LIST:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->paramCount:I

    .line 38
    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->tempNumber:I

    .line 42
    iput-object p0, p0, Lorg/mozilla/javascript/ast/Scope;->top:Lorg/mozilla/javascript/ast/ScriptNode;

    const/16 v0, 0x88

    .line 43
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceStart:I

    .line 23
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceEnd:I

    .line 26
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->endLineno:I

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->EMPTY_LIST:Ljava/util/List;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->paramCount:I

    .line 38
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->tempNumber:I

    .line 42
    iput-object p0, p0, Lorg/mozilla/javascript/ast/Scope;->top:Lorg/mozilla/javascript/ast/ScriptNode;

    const/16 p1, 0x88

    .line 43
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public addFunction(Lorg/mozilla/javascript/ast/FunctionNode;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 180
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 179
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method public addRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 203
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    .line 206
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return-void

    .line 202
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method addSymbol(Lorg/mozilla/javascript/ast/Symbol;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 244
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Symbol;->getDeclType()I

    move-result v0

    const/16 v1, 0x57

    if-ne v0, v1, :cond_0

    .line 245
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->paramCount:I

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 243
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method public flattenSymbolTable(Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 268
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    iget-object v1, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 273
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 274
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Symbol;

    .line 275
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Symbol;->getContainingTable()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 276
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    .line 282
    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    .line 283
    iget-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->isConsts:[Z

    const/4 p1, 0x0

    .line 284
    :goto_1
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 285
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/Symbol;

    .line 286
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 287
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->isConsts:[Z

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Symbol;->getDeclType()I

    move-result v3

    const/16 v4, 0x9a

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    aput-boolean v3, v2, p1

    .line 288
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/Symbol;->setIndex(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getBaseLineno()I
    .locals 1

    .line 138
    iget v0, p0, Lorg/mozilla/javascript/Node;->lineno:I

    return v0
.end method

.method public getCompilerData()Ljava/lang/Object;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->compilerData:Ljava/lang/Object;

    return-object v0
.end method

.method public getEncodedSource()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSource:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedSourceEnd()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceEnd:I

    return v0
.end method

.method public getEncodedSourceStart()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceStart:I

    return v0
.end method

.method public getEndLineno()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->endLineno:I

    return v0
.end method

.method public getFunctionCount()I
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/FunctionNode;

    return-object p1
.end method

.method public getFunctions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/FunctionNode;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getIndexForNameNode(Lorg/mozilla/javascript/Node;)I
    .locals 2

    .line 210
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Scope;->getSymbol(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Symbol;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Symbol;->getIndex()I

    move-result p1

    :goto_1
    return p1

    .line 210
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    throw v1
.end method

.method public getNextTempName()Ljava/lang/String;
    .locals 3

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->tempNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->tempNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamAndVarConst()[Z
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->isConsts:[Z

    return-object v0

    .line 238
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0
.end method

.method public getParamAndVarCount()I
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 228
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0
.end method

.method public getParamAndVarNames()[Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0
.end method

.method public getParamCount()I
    .locals 1

    .line 224
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->paramCount:I

    return v0
.end method

.method public getParamOrVarName(I)Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    aget-object p1, v0, p1

    return-object p1

    .line 219
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method public getRegexpCount()I
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRegexpFlags(I)Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/RegExpLiteral;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/RegExpLiteral;->getFlags()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRegexpString(I)Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/RegExpLiteral;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/RegExpLiteral;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/Symbol;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    return-object v0
.end method

.method public setBaseLineno(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 147
    iget v0, p0, Lorg/mozilla/javascript/Node;->lineno:I

    if-gez v0, :cond_0

    .line 148
    iput p1, p0, Lorg/mozilla/javascript/Node;->lineno:I

    return-void

    .line 147
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method public setCompilerData(Ljava/lang/Object;)V
    .locals 1

    .line 297
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->compilerData:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 301
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->compilerData:Ljava/lang/Object;

    return-void

    .line 300
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setEncodedSource(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSource:Ljava/lang/String;

    return-void
.end method

.method public setEncodedSourceBounds(II)V
    .locals 0

    .line 106
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceStart:I

    .line 107
    iput p2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceEnd:I

    return-void
.end method

.method public setEncodedSourceEnd(I)V
    .locals 0

    .line 98
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceEnd:I

    return-void
.end method

.method public setEncodedSourceStart(I)V
    .locals 0

    .line 82
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceStart:I

    return-void
.end method

.method public setEndLineno(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 157
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->endLineno:I

    if-gez v0, :cond_0

    .line 158
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->endLineno:I

    return-void

    .line 157
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->sourceName:Ljava/lang/String;

    return-void
.end method

.method public setSymbols(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/Symbol;",
            ">;)V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    return-void
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 2

    .line 310
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 312
    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method
