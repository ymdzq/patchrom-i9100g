.class Lcom/samsung/inputmethod/SimeDecoderService$1;
.super Lcom/samsung/inputmethod/ISamsungIMEDecoderService$Stub;
.source "SimeDecoderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SimeDecoderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/SimeDecoderService;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SimeDecoderService;)V
    .locals 0
    .parameter

    .prologue
    .line 812
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    invoke-direct {p0}, Lcom/samsung/inputmethod/ISamsungIMEDecoderService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public XT9AWCandidatesList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1324
    .local p1, candidatesList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v1, 0x0

    .line 1326
    .local v1, i:I
    :cond_0
    invoke-static {v1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeXT9AWGetPhrase(I)Ljava/lang/String;

    move-result-object v2

    .line 1327
    .local v2, retStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1328
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;)V

    .line 1329
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1330
    add-int/lit8 v1, v1, 0x1

    .line 1332
    .end local v0           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1333
    return-void
.end method

.method public XT9AWChooseCand(I)I
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 1344
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9AWChoosePhrase(I)I

    move-result v0

    return v0
.end method

.method public XT9AWClearInput()I
    .locals 1

    .prologue
    .line 1351
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeXT9AWClearInput()I

    move-result v0

    return v0
.end method

.method public XT9AWDelSearch()I
    .locals 1

    .prologue
    .line 1355
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeXT9AWDelSearch()I

    move-result v0

    return v0
.end method

.method public XT9AWGetActiveIndex()I
    .locals 1

    .prologue
    .line 1348
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9AWGetDefaultActiveIndex()I

    move-result v0

    return v0
.end method

.method public XT9AWGetNthCandidate(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 1340
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeXT9AWGetPhrase(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public XT9AWSearch(C)I
    .locals 1
    .parameter "symbol"

    .prologue
    .line 1336
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeXT9AWSearch(C)I

    move-result v0

    return v0
.end method

.method public XT9AWSetCapsLock()I
    .locals 1

    .prologue
    .line 1372
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeXT9AWSetCapsLock()I

    move-result v0

    return v0
.end method

.method public XT9AWSetShift()I
    .locals 1

    .prologue
    .line 1359
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeXT9AWSetShift()I

    move-result v0

    return v0
.end method

.method public XT9AWSetShiftMode(I)I
    .locals 1
    .parameter "ShiftMode"

    .prologue
    .line 1367
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeXT9AWSetShiftMode(I)I

    move-result v0

    return v0
.end method

.method public XT9AWSetUnShift()I
    .locals 1

    .prologue
    .line 1363
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeXT9AWSetUnShift()I

    move-result v0

    return v0
.end method

.method public imEndJOHAB()V
    .locals 0

    .prologue
    .line 1300
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImEndJOHAB()V

    .line 1301
    return-void
.end method

.method public imGetMadeCode(ZIIII)[C
    .locals 1
    .parameter "isJAEUM"
    .parameter "sipKey"
    .parameter "selMode"
    .parameter "keyboardType"
    .parameter "keyboardOption"

    .prologue
    .line 1280
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImGetMadeCode(ZIIII)[C

    move-result-object v0

    return-object v0
.end method

.method public imGetMadeCodeSize()I
    .locals 1

    .prologue
    .line 1284
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImGetMadeCodeSize()I

    move-result v0

    return v0
.end method

.method public imGetMakeCode()[C
    .locals 1

    .prologue
    .line 1288
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImGetMakeCode()[C

    move-result-object v0

    return-object v0
.end method

.method public imGetMakeCodeSize()I
    .locals 1

    .prologue
    .line 1292
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImGetMakeCodeSize()I

    move-result v0

    return v0
.end method

.method public imInitJOHAB()V
    .locals 0

    .prologue
    .line 1296
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImInitJOHAB()V

    .line 1297
    return-void
.end method

.method public imIsCTCModel()Z
    .locals 1

    .prologue
    .line 1311
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImIsCTCModel()Z

    move-result v0

    return v0
.end method

.method public imIsTDModel()Z
    .locals 1

    .prologue
    .line 1317
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImIsTDModel()Z

    move-result v0

    return v0
.end method

.method public imKorProcessBackspace()Z
    .locals 1

    .prologue
    .line 1304
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImKorProcessBackspace()Z

    move-result v0

    return v0
.end method

.method public imXT9CHNAddOneChar(C)I
    .locals 1
    .parameter "symbol"

    .prologue
    .line 944
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNAddOneChar(C)I

    move-result v0

    return v0
.end method

.method public imXT9CHNChooseCand(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1135
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNChoosePhrase(I)I

    move-result v0

    return v0
.end method

.method public imXT9CHNDelUDBPhrase(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1215
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNDelUDBPhrase(I)Z

    move-result v0

    return v0
.end method

.method public imXT9CHNEnableErrorCorrect(Z)I
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 1239
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNEnableErrorCorrect(Z)I

    move-result v0

    return v0
.end method

.method public imXT9CHNEnableFullSentence(Z)I
    .locals 1
    .parameter "bHigh"

    .prologue
    .line 1242
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNEnableFullSentence(Z)I

    move-result v0

    return v0
.end method

.method public imXT9CHNGetCandsList(Ljava/util/List;II)I
    .locals 6
    .parameter
    .parameter "start"
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 1101
    .local p1, candList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v2, 0x0

    .line 1102
    .local v2, retCnt:I
    if-nez p1, :cond_0

    move v3, v2

    .line 1119
    .end local v2           #retCnt:I
    .local v3, retCnt:I
    :goto_0
    return v3

    .line 1104
    .end local v3           #retCnt:I
    .restart local v2       #retCnt:I
    :cond_0
    move v1, p2

    .local v1, i:I
    :goto_1
    add-int v5, p2, p3

    if-ge v1, v5, :cond_1

    .line 1106
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>()V

    .line 1107
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-static {v1, v0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetPhraseInfo(ILcom/samsung/inputmethod/candidate/SimeCandDetailInfo;)V

    .line 1108
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 1110
    .local v4, retStr:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1111
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1113
    add-int/lit8 v2, v2, 0x1

    .line 1104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .end local v4           #retStr:Ljava/lang/String;
    :cond_1
    move v3, v2

    .line 1119
    .end local v2           #retCnt:I
    .restart local v3       #retCnt:I
    goto :goto_0
.end method

.method public imXT9CHNGetPredictionList(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .parameter "fixedStr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, preList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v3, 0x0

    .line 1168
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNPreparePrediction(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 1170
    const/4 v1, 0x0

    .line 1171
    .local v1, i:I
    if-nez p2, :cond_0

    .line 1198
    .end local v1           #i:I
    :goto_0
    return v1

    .line 1175
    .restart local v1       #i:I
    :cond_0
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>()V

    .line 1176
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-static {v1, v0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetPhraseInfo(ILcom/samsung/inputmethod/candidate/SimeCandDetailInfo;)V

    .line 1177
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 1184
    .local v2, retStr:Ljava/lang/String;
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DEL_UDB_FEATURE:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->isContentTypeUDB()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1186
    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContentType(I)V

    .line 1190
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1191
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    add-int/lit8 v1, v1, 0x1

    .line 1195
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    .end local v0           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .end local v1           #i:I
    .end local v2           #retStr:Ljava/lang/String;
    :cond_3
    move v1, v3

    .line 1198
    goto :goto_0
.end method

.method public imXT9CHNGetPrefixCount()I
    .locals 1

    .prologue
    .line 981
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetPrefixCount()I

    move-result v0

    return v0
.end method

.method public imXT9CHNGetPrefixs(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 998
    .local p1, prefixsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 999
    .local v0, i:I
    if-nez p1, :cond_0

    move v1, v0

    .line 1014
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    return v1

    .line 1002
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetPrefixCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 1005
    :cond_1
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetPrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, retStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1008
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    add-int/lit8 v0, v0, 0x1

    .line 1012
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .end local v2           #retStr:Ljava/lang/String;
    :cond_3
    move v1, v0

    .line 1014
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public imXT9CHNGetRefinedSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1151
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetRefinedSpell()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imXT9CHNGetSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 977
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetSpell()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imXT9CHNGetSuffixCount()I
    .locals 1

    .prologue
    .line 1018
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetSuffixCount()I

    move-result v0

    return v0
.end method

.method public imXT9CHNGetSuffixs(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1035
    .local p1, prefixsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1036
    .local v0, i:I
    if-nez p1, :cond_0

    move v1, v0

    .line 1051
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    return v1

    .line 1039
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetSuffixCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 1042
    :cond_1
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNGetSuffix(I)Ljava/lang/String;

    move-result-object v2

    .line 1044
    .local v2, retStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1045
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    add-int/lit8 v0, v0, 0x1

    .line 1049
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .end local v2           #retStr:Ljava/lang/String;
    :cond_3
    move v1, v0

    .line 1051
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public imXT9CHNPYEnableMohuPairs(I)I
    .locals 1
    .parameter "iPairsModeMask"

    .prologue
    .line 1233
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNPYEnableMohuPairs(I)I

    move-result v0

    return v0
.end method

.method public imXT9CHNProcessBackspace()I
    .locals 1

    .prologue
    .line 960
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNProcessBackspace()I

    move-result v0

    return v0
.end method

.method public imXT9CHNReset()V
    .locals 0

    .prologue
    .line 929
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNReset()V

    .line 930
    return-void
.end method

.method public imXT9CHNSTREnableComponent(Z)I
    .locals 1
    .parameter "enable"

    .prologue
    .line 1245
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNSTREnableComponent(Z)I

    move-result v0

    return v0
.end method

.method public imXT9CHNSetActivePrefix(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1067
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNSetActivePrefix(I)I

    move-result v0

    return v0
.end method

.method public imXT9CHNSetActiveSuffix(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1083
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNSetActiveSuffix(I)I

    move-result v0

    return v0
.end method

.method public imXT9CHNSetMdbPriorityHigh(Z)I
    .locals 1
    .parameter "bHigh"

    .prologue
    .line 1236
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNSetMdbPriorityHigh(Z)I

    move-result v0

    return v0
.end method

.method public imXT9FreeUdb()V
    .locals 0

    .prologue
    .line 835
    invoke-static {}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNFreeUdbBuf()V

    .line 836
    return-void
.end method

.method public imXT9KORGetPredictionList(Ljava/lang/String;Ljava/util/List;)I
    .locals 7
    .parameter "fixedStr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1250
    .local p2, preList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v2, 0x0

    .line 1252
    .local v2, predictCnt:I
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9KORPreparePrediction(Ljava/lang/String;)I

    move-result v2

    .line 1257
    if-lez v2, :cond_3

    .line 1259
    const/4 v1, 0x0

    .line 1260
    .local v1, i:I
    if-nez p2, :cond_1

    .line 1275
    .end local v1           #i:I
    :cond_0
    :goto_0
    return v1

    .line 1262
    .restart local v1       #i:I
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 1263
    invoke-static {v1}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9KORGetPredict(I)Ljava/lang/String;

    move-result-object v3

    .line 1264
    .local v3, retStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1265
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;)V

    .line 1266
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    .end local v0           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1268
    :cond_2
    const-string v4, "SimeDecoderService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---retStr is null -------i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1275
    .end local v1           #i:I
    .end local v3           #retStr:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public imXT9SetInputMode(IZ)V
    .locals 2
    .parameter "mode"
    .parameter "isPhonePad"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 884
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNSetInputMode(IZ)I

    .line 890
    :cond_1
    :goto_0
    return-void

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    invoke-static {p1, p2}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeXT9AWSetInputMode(IZ)I

    goto :goto_0
.end method

.method public imXT9SetLanguage(Ljava/lang/String;)V
    .locals 1
    .parameter "language"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iput-object p1, v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    .line 853
    const-string v0, "zh_CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    sget v0, Lcom/samsung/inputmethod/SimeDecoderService;->XT9PLIDChineseSimplified:I

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNLoadLDBNum(I)V

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    const-string v0, "zh_TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    sget v0, Lcom/samsung/inputmethod/SimeDecoderService;->XT9PLIDChineseTraditional:I

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNLoadLDBNum(I)V

    goto :goto_0

    .line 857
    :cond_2
    const-string v0, "zh_HK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    sget v0, Lcom/samsung/inputmethod/SimeDecoderService;->XT9PLIDChineseHongkong:I

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNLoadLDBNum(I)V

    goto :goto_0

    .line 859
    :cond_3
    const-string v0, "ko"

    if-eq p1, v0, :cond_0

    .line 862
    const-string v0, "en"

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method public imXT9SetSKBValue(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 907
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/inputmethod/SimeDecoderService;->nativeImXT9CHNSetSKBValue(II)V

    .line 913
    :cond_1
    :goto_0
    return-void

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/SimeDecoderService;)Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public imXT9StoreUdb()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/SimeDecoderService;

    #calls: Lcom/samsung/inputmethod/SimeDecoderService;->storeUdbToFile()V
    invoke-static {v0}, Lcom/samsung/inputmethod/SimeDecoderService;->access$000(Lcom/samsung/inputmethod/SimeDecoderService;)V

    .line 831
    return-void
.end method
