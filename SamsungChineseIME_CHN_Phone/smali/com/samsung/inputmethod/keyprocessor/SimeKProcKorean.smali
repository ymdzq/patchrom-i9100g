.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcKorean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$1;,
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KoreanKeyProcessor"


# instance fields
.field private mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

.field private mKeyboardOption:I

.field private m_koreanLastVowels:[I

.field private mkor34OldKeyCode:I

.field private mkor34keyCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 3
    .parameter "ime"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 38
    iput v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    .line 40
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;-><init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    .line 42
    iput v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    .line 1075
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    .line 47
    return-void

    .line 1075
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private GetKoreanLastDotVowelCount()I
    .locals 4

    .prologue
    .line 1078
    const/4 v1, 0x0

    .line 1080
    .local v1, nLastDotVowelCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1081
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 1082
    add-int/lit8 v1, v1, 0x1

    .line 1080
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1084
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1087
    :cond_1
    return v1
.end method

.method private PreProcessKor34KeyBoard(IZ)I
    .locals 12
    .parameter "keyCode"
    .parameter "realAction"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 602
    .local v6, ic:Landroid/view/inputmethod/InputConnection;
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34OldKeyCode:I

    if-ne v0, p1, :cond_7

    .line 603
    if-eqz p2, :cond_0

    .line 607
    iget-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->spaceInputted:Z

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 609
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    .line 629
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->setKeyboardOption()V

    .line 631
    const/4 v7, 0x0

    .line 633
    .local v7, keyChar:I
    const/16 v0, 0xc

    new-array v8, v0, [[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ","

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "."

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u3131"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "\u3132"

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    const/4 v0, 0x2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u3134"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "\u3137"

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u3138"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "\u3139"

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u3141"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "\u3142"

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    const/4 v0, 0x5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u3143"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "\u3145"

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    const/4 v0, 0x6

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u3146"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "\u3147"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "\u3148"

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    const/4 v0, 0x7

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u3149"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "\u314a"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "\u314b"

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    const/16 v0, 0x8

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u314c"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "\u314d"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "\u314e"

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    const/16 v0, 0x9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "."

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    const/16 v0, 0xa

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u3161"

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    const/16 v0, 0xb

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u3163"

    aput-object v4, v1, v3

    aput-object v1, v8, v0

    .line 641
    .local v8, mKor34KeyMap:[[Ljava/lang/String;
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    if-nez v0, :cond_a

    .line 655
    :cond_1
    :goto_1
    const/4 v9, 0x0

    .line 656
    .local v9, strMade:Ljava/lang/String;
    const/4 v10, 0x0

    .line 658
    .local v10, strMake:Ljava/lang/String;
    const/4 v2, 0x0

    .line 659
    .local v2, realKeyCode:I
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_b

    .line 660
    const/4 v2, 0x2

    .line 735
    :cond_2
    :goto_2
    const/16 v0, 0x26

    if-ne p1, v0, :cond_26

    .line 737
    move v7, v2

    .line 738
    const/16 v0, 0x2c

    if-ne v2, v0, :cond_3

    .line 739
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ","

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 740
    :cond_3
    const/16 v0, 0x3f

    if-ne v2, v0, :cond_4

    .line 741
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, "?"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 742
    :cond_4
    const/16 v0, 0x21

    if-ne v2, v0, :cond_5

    .line 743
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, "!"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 745
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 746
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    .line 824
    :cond_6
    :goto_3
    iput p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34OldKeyCode:I

    .line 826
    return v7

    .line 613
    .end local v2           #realKeyCode:I
    .end local v7           #keyChar:I
    .end local v8           #mKor34KeyMap:[[Ljava/lang/String;
    .end local v9           #strMade:Ljava/lang/String;
    .end local v10           #strMake:Ljava/lang/String;
    :cond_7
    if-eqz v6, :cond_9

    if-eqz p2, :cond_9

    const/16 v0, 0x26

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34OldKeyCode:I

    const/16 v1, 0x26

    if-eq v0, v1, :cond_8

    const/16 v0, 0x28

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34OldKeyCode:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_9

    .line 617
    :cond_8
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 618
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 620
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 621
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 626
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->clearFlags()V

    goto/16 :goto_0

    .line 643
    .restart local v7       #keyChar:I
    .restart local v8       #mKor34KeyMap:[[Ljava/lang/String;
    :cond_a
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    if-eqz v0, :cond_1

    .line 644
    const/16 v0, 0x1d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x26

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    .line 647
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_1

    const/16 v0, 0x28

    if-gt p1, v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->processKorBackspace()Z

    goto/16 :goto_1

    .line 661
    .restart local v2       #realKeyCode:I
    .restart local v9       #strMade:Ljava/lang/String;
    .restart local v10       #strMake:Ljava/lang/String;
    :cond_b
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_c

    .line 662
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 663
    :cond_c
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_d

    .line 664
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 665
    :cond_d
    const/16 v0, 0x20

    if-ne p1, v0, :cond_10

    .line 666
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_e

    .line 667
    const/4 v2, 0x0

    .line 668
    :cond_e
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 669
    const/16 v2, 0xf

    .line 670
    :cond_f
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 671
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 672
    :cond_10
    const/16 v0, 0x21

    if-ne p1, v0, :cond_12

    .line 673
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_11

    .line 674
    const/4 v2, 0x2

    .line 675
    :cond_11
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 676
    const/4 v2, 0x5

    goto/16 :goto_2

    .line 677
    :cond_12
    const/16 v0, 0x22

    if-ne p1, v0, :cond_15

    .line 678
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_13

    .line 679
    const/4 v2, 0x3

    .line 680
    :cond_13
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 681
    const/16 v2, 0x10

    .line 682
    :cond_14
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 683
    const/4 v2, 0x4

    goto/16 :goto_2

    .line 684
    :cond_15
    const/16 v0, 0x23

    if-ne p1, v0, :cond_18

    .line 685
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_16

    .line 686
    const/4 v2, 0x7

    .line 687
    :cond_16
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 688
    const/16 v2, 0x11

    .line 689
    :cond_17
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 690
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 691
    :cond_18
    const/16 v0, 0x24

    if-ne p1, v0, :cond_1b

    .line 692
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_19

    .line 693
    const/16 v2, 0x9

    .line 694
    :cond_19
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 695
    const/16 v2, 0x12

    .line 696
    :cond_1a
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 697
    const/16 v2, 0xa

    goto/16 :goto_2

    .line 698
    :cond_1b
    const/16 v0, 0x25

    if-ne p1, v0, :cond_1e

    .line 699
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1c

    .line 700
    const/16 v2, 0xc

    .line 701
    :cond_1c
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 702
    const/16 v2, 0xe

    .line 703
    :cond_1d
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 704
    const/16 v2, 0xd

    goto/16 :goto_2

    .line 705
    :cond_1e
    const/16 v0, 0x26

    if-ne p1, v0, :cond_22

    .line 708
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1f

    .line 709
    const/16 v2, 0x2c

    .line 710
    const-string v0, ","

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mLastRealKeyCode:Ljava/lang/String;

    .line 712
    :cond_1f
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 713
    const/16 v2, 0x3f

    .line 714
    const-string v0, "?"

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mLastRealKeyCode:Ljava/lang/String;

    .line 716
    :cond_20
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 717
    const/16 v2, 0x21

    .line 718
    const-string v0, "!"

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mLastRealKeyCode:Ljava/lang/String;

    .line 720
    :cond_21
    iput p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mLastKeyCode:I

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->timeOver:Z

    goto/16 :goto_2

    .line 722
    :cond_22
    const/16 v0, 0x27

    if-ne p1, v0, :cond_24

    .line 723
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_23

    .line 724
    const/16 v2, 0xb

    .line 725
    :cond_23
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 726
    const/4 v2, 0x6

    goto/16 :goto_2

    .line 727
    :cond_24
    const/16 v0, 0x28

    if-ne p1, v0, :cond_2

    .line 729
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    .line 730
    const/16 v2, 0x40

    .line 731
    :cond_25
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 732
    const/16 v2, 0x21

    goto/16 :goto_2

    .line 747
    :cond_26
    const/16 v0, 0x28

    if-ne p1, v0, :cond_29

    .line 749
    move v7, v2

    .line 750
    const/16 v0, 0x40

    if-ne v2, v0, :cond_27

    .line 751
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, "@"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 752
    :cond_27
    const/16 v0, 0x21

    if-ne v2, v0, :cond_28

    .line 753
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, "!"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 754
    :cond_28
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 755
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_3

    .line 756
    :cond_29
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_6

    const/16 v0, 0x28

    if-gt p1, v0, :cond_6

    .line 757
    const/16 v7, 0x3131

    .line 759
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v11

    .line 763
    .local v11, strOriginalMake:Ljava/lang/String;
    const/16 v0, 0x20

    if-lt p1, v0, :cond_2c

    const/16 v0, 0x28

    if-gt p1, v0, :cond_2c

    .line 765
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v9

    .line 807
    :cond_2a
    :goto_4
    if-eqz v9, :cond_2b

    .line 808
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 811
    :cond_2b
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v10

    .line 814
    if-eqz v6, :cond_6

    .line 815
    if-eqz v10, :cond_6

    .line 816
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 817
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 818
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_3

    .line 772
    :cond_2c
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2a

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_2a

    .line 774
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v9

    .line 781
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v10

    .line 784
    if-eqz v9, :cond_2d

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    :cond_2d
    if-eqz v11, :cond_2a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz v10, :cond_2a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 789
    invoke-virtual {p0, v10}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 792
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 797
    :cond_2e
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4
.end method

.method private ProcessQWkoreanKey(Landroid/view/KeyEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    const/4 v0, 0x7

    const/4 v5, 0x3

    const/4 v11, 0x1

    const/16 v4, 0x1a

    const/4 v3, 0x0

    .line 830
    const/4 v8, 0x0

    .line 831
    .local v8, strMade:Ljava/lang/String;
    const/4 v9, 0x0

    .line 833
    .local v9, strMake:Ljava/lang/String;
    const/16 v12, 0xa

    new-array v10, v12, [I

    fill-array-data v10, :array_0

    .line 834
    .local v10, vowels:[I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 835
    .local v7, keyCode:I
    const/4 v6, 0x0

    .line 836
    .local v6, bTmpUpper:Z
    const/4 v1, 0x1

    .line 837
    .local v1, isJaeun:Z
    const/4 v2, 0x0

    .line 839
    .local v2, sipKey:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->setKeyboardOption()V

    .line 841
    iget-object v12, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v12}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextTempUpperCaseWithSkb()Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v12}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextUpperCaseWithSkb()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 844
    :cond_0
    const/4 v6, 0x1

    .line 850
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 1020
    :goto_1
    invoke-virtual {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processShift(Z)V

    .line 1022
    return-void

    .line 846
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 853
    :pswitch_0
    if-eqz v6, :cond_2

    const/16 v2, 0x8

    .line 855
    :goto_2
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 856
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v2, v0

    .line 853
    goto :goto_2

    .line 860
    :pswitch_1
    if-eqz v6, :cond_3

    const/16 v2, 0xd

    .line 863
    :goto_3
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 864
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto :goto_1

    .line 860
    :cond_3
    const/16 v2, 0xc

    goto :goto_3

    .line 868
    :pswitch_2
    if-eqz v6, :cond_4

    const/4 v2, 0x4

    .line 871
    :goto_4
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 872
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v2, v5

    .line 868
    goto :goto_4

    .line 876
    :pswitch_3
    if-eqz v6, :cond_5

    move v2, v11

    .line 879
    :goto_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 880
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v2, v3

    .line 876
    goto :goto_5

    .line 884
    :pswitch_4
    if-eqz v6, :cond_6

    const/16 v2, 0xa

    .line 887
    :goto_6
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 888
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto :goto_1

    .line 884
    :cond_6
    const/16 v2, 0x9

    goto :goto_6

    .line 892
    :pswitch_5
    const/16 v2, 0xe

    .line 893
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto :goto_1

    .line 897
    :pswitch_6
    const/16 v2, 0x8

    .line 898
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto :goto_1

    .line 902
    :pswitch_7
    const/4 v2, 0x4

    .line 903
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto/16 :goto_1

    .line 907
    :pswitch_8
    if-eqz v6, :cond_7

    const/4 v2, 0x5

    .line 908
    :goto_7
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto/16 :goto_1

    :cond_7
    move v2, v5

    .line 907
    goto :goto_7

    .line 912
    :pswitch_9
    if-eqz v6, :cond_8

    const/16 v2, 0x9

    .line 913
    :goto_8
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto/16 :goto_1

    :cond_8
    move v2, v0

    .line 912
    goto :goto_8

    .line 917
    :pswitch_a
    const/4 v2, 0x6

    .line 919
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 920
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 924
    :pswitch_b
    const/4 v2, 0x2

    .line 926
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 927
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 931
    :pswitch_c
    const/16 v2, 0xb

    .line 933
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 934
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 938
    :pswitch_d
    const/4 v2, 0x5

    .line 940
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 941
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 945
    :pswitch_e
    const/16 v2, 0x12

    .line 947
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 948
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 952
    :pswitch_f
    const/16 v2, 0xa

    .line 953
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto/16 :goto_1

    .line 957
    :pswitch_10
    const/4 v2, 0x6

    .line 958
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto/16 :goto_1

    .line 962
    :pswitch_11
    const/4 v2, 0x2

    .line 963
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto/16 :goto_1

    .line 967
    :pswitch_12
    const/4 v2, 0x1

    .line 968
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto/16 :goto_1

    .line 972
    :pswitch_13
    const/16 v2, 0xf

    .line 974
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 975
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 979
    :pswitch_14
    const/16 v2, 0x10

    .line 981
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 982
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 986
    :pswitch_15
    const/16 v2, 0xe

    .line 988
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 989
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 993
    :pswitch_16
    const/16 v2, 0x11

    .line 995
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 996
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1000
    :pswitch_17
    const/16 v2, 0x13

    .line 1001
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto/16 :goto_1

    .line 1005
    :pswitch_18
    const/16 v2, 0xf

    .line 1006
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto/16 :goto_1

    .line 1010
    :pswitch_19
    const/16 v2, 0x14

    .line 1011
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->SubmitMadeAndMakeCode_new(I)V

    goto/16 :goto_1

    .line 833
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 850
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_a
        :pswitch_17
        :pswitch_15
        :pswitch_c
        :pswitch_2
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_19
        :pswitch_18
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_3
        :pswitch_b
        :pswitch_4
        :pswitch_6
        :pswitch_16
        :pswitch_1
        :pswitch_14
        :pswitch_5
        :pswitch_13
    .end packed-switch
.end method

.method private SubmitConsonantMadeAndMakeCode(Ljava/lang/String;)V
    .locals 5
    .parameter "strMade"

    .prologue
    .line 1347
    const/4 v2, 0x0

    .line 1349
    .local v2, strMake:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v2

    .line 1352
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1353
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 1354
    if-eqz p1, :cond_0

    .line 1355
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 1357
    :cond_0
    if-eqz v2, :cond_1

    .line 1358
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 1364
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 1365
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 1364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1367
    :cond_2
    return-void
.end method

.method private SubmitMadeAndMakeCode_new(I)V
    .locals 10
    .parameter "realKeyCode"

    .prologue
    const/16 v4, 0x1a

    const/4 v1, 0x0

    .line 1027
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 1029
    .local v6, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v9

    .line 1032
    .local v9, strOriginalMake:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1033
    .local v7, strMade:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1035
    .local v8, strMake:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->setKeyboardOption()V

    .line 1038
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    move v2, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v7

    .line 1040
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v8

    .line 1043
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1047
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    move v2, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v7

    .line 1058
    :cond_2
    if-eqz v7, :cond_3

    .line 1059
    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 1062
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v8

    .line 1065
    if-eqz v6, :cond_4

    .line 1066
    if-eqz v8, :cond_4

    .line 1067
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 1072
    :cond_4
    return-void
.end method

.method private SubmitVowelCode([I)V
    .locals 18
    .parameter "vowels"

    .prologue
    .line 1091
    const/4 v8, 0x1

    .line 1093
    .local v8, bSuccess:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v17

    .line 1096
    .local v17, strOriginalMake:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 1097
    .local v10, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v10, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1102
    :cond_2
    const/4 v8, 0x0

    .line 1105
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->setKeyboardOption()V

    .line 1107
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->GetKoreanLastDotVowelCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    aget v2, p1, v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    aget v2, p1, v2

    if-eqz v2, :cond_10

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->GetKoreanLastDotVowelCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    aget v2, p1, v2

    if-eqz v2, :cond_10

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    const/4 v2, 0x0

    aget v2, p1, v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    const/4 v2, 0x0

    aget v2, p1, v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    const/4 v2, 0x0

    aget v2, p1, v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    const/4 v2, 0x0

    aget v2, p1, v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    aget v2, p1, v2

    if-nez v2, :cond_e

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    const/4 v2, 0x0

    aget v2, p1, v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    aget v2, p1, v2

    if-nez v2, :cond_f

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    const/4 v2, 0x0

    aget v2, p1, v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 1153
    :cond_10
    const/4 v8, 0x0

    .line 1156
    :cond_11
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v9, v2, :cond_12

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->m_koreanLastVowels:[I

    aget v3, p1, v9

    aput v3, v2, v9

    .line 1156
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1165
    :cond_12
    const/4 v12, 0x0

    .line 1166
    .local v12, strMade1:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1167
    .local v14, strMake1:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v8, v2, :cond_13

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, p1, v4

    const/4 v5, 0x0

    const/16 v6, 0x1a

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v12

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v14

    .line 1180
    if-nez v12, :cond_13

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1181
    const/4 v8, 0x0

    .line 1189
    :cond_13
    const/4 v13, 0x0

    .line 1190
    .local v13, strMadeTmp:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1192
    .local v16, strMakeTmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v11

    .line 1195
    .local v11, strBeforeThisOneMake:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v8, v2, :cond_15

    .line 1196
    const/4 v9, 0x1

    :goto_2
    const/16 v2, 0xa

    if-ge v9, v2, :cond_15

    aget v2, p1, v9

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, p1, v9

    const/4 v5, 0x0

    const/16 v6, 0x1a

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v13

    .line 1200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v16

    .line 1210
    if-nez v13, :cond_14

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1212
    :cond_14
    const/4 v8, 0x0

    .line 1223
    :cond_15
    const/4 v2, 0x1

    if-ne v8, v2, :cond_19

    .line 1224
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    .line 1225
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 1228
    :cond_16
    if-eqz v16, :cond_18

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1215
    :cond_17
    move-object/from16 v11, v16

    .line 1196
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1233
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1241
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 1246
    :cond_1a
    if-eqz v17, :cond_1b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 1247
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 1250
    :cond_1b
    const/4 v9, 0x0

    :goto_3
    const/16 v2, 0xa

    if-ge v9, v2, :cond_1c

    aget v2, p1, v9

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, p1, v9

    const/4 v5, 0x0

    const/16 v6, 0x1a

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v13

    .line 1250
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1261
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v15

    .line 1264
    .local v15, strMakeLast:Ljava/lang/String;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v15, v3}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private onFKorChoiceTouched(II)V
    .locals 13
    .parameter "kor34KeyCode"
    .parameter "activeCandNo"

    .prologue
    const/16 v4, 0xc

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1273
    new-array v7, v4, [[Ljava/lang/String;

    new-array v0, v11, [Ljava/lang/String;

    const-string v5, "\uff0c"

    aput-object v5, v0, v3

    const-string v5, "\u3002"

    aput-object v5, v0, v1

    aput-object v0, v7, v3

    new-array v0, v11, [Ljava/lang/String;

    const-string v5, "\u3131"

    aput-object v5, v0, v3

    const-string v5, "\u3132"

    aput-object v5, v0, v1

    aput-object v0, v7, v1

    new-array v0, v11, [Ljava/lang/String;

    const-string v5, "\u3134"

    aput-object v5, v0, v3

    const-string v5, "\u3137"

    aput-object v5, v0, v1

    aput-object v0, v7, v11

    new-array v0, v11, [Ljava/lang/String;

    const-string v5, "\u3138"

    aput-object v5, v0, v3

    const-string v5, "\u3139"

    aput-object v5, v0, v1

    aput-object v0, v7, v12

    const/4 v0, 0x4

    new-array v5, v11, [Ljava/lang/String;

    const-string v10, "\u3141"

    aput-object v10, v5, v3

    const-string v10, "\u3142"

    aput-object v10, v5, v1

    aput-object v5, v7, v0

    const/4 v0, 0x5

    new-array v5, v11, [Ljava/lang/String;

    const-string v10, "\u3143"

    aput-object v10, v5, v3

    const-string v10, "\u3145"

    aput-object v10, v5, v1

    aput-object v5, v7, v0

    const/4 v0, 0x6

    new-array v5, v12, [Ljava/lang/String;

    const-string v10, "\u3146"

    aput-object v10, v5, v3

    const-string v10, "\u3147"

    aput-object v10, v5, v1

    const-string v10, "\u3148"

    aput-object v10, v5, v11

    aput-object v5, v7, v0

    const/4 v0, 0x7

    new-array v5, v12, [Ljava/lang/String;

    const-string v10, "\u3149"

    aput-object v10, v5, v3

    const-string v10, "\u314a"

    aput-object v10, v5, v1

    const-string v10, "\u314b"

    aput-object v10, v5, v11

    aput-object v5, v7, v0

    const/16 v0, 0x8

    new-array v5, v12, [Ljava/lang/String;

    const-string v10, "\u314c"

    aput-object v10, v5, v3

    const-string v10, "\u314d"

    aput-object v10, v5, v1

    const-string v10, "\u314e"

    aput-object v10, v5, v11

    aput-object v5, v7, v0

    const/16 v0, 0x9

    new-array v5, v1, [Ljava/lang/String;

    const-string v10, "."

    aput-object v10, v5, v3

    aput-object v5, v7, v0

    const/16 v0, 0xa

    new-array v5, v1, [Ljava/lang/String;

    const-string v10, "\u3161"

    aput-object v10, v5, v3

    aput-object v5, v7, v0

    const/16 v0, 0xb

    new-array v5, v1, [Ljava/lang/String;

    const-string v10, "\u3163"

    aput-object v10, v5, v3

    aput-object v5, v7, v0

    .line 1281
    .local v7, mKor34KeyMap:[[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 1282
    .local v6, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v8, 0x0

    .line 1283
    .local v8, strMade:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1285
    .local v9, strMake:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->setKeyboardOption()V

    .line 1287
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_1

    .line 1288
    aget-object v0, v7, v3

    aget-object v0, v0, p2

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_4

    const/16 v0, 0x22

    if-gt p1, v0, :cond_4

    .line 1293
    add-int/lit8 v0, p1, -0x1e

    mul-int/lit8 v0, v0, 0x2

    add-int v2, v0, p2

    .line 1295
    .local v2, nIndex:I
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 1320
    .end local v2           #nIndex:I
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 1323
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 1329
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v9

    .line 1333
    if-eqz v6, :cond_0

    .line 1334
    if-eqz v9, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 1340
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 1341
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0

    .line 1301
    :cond_4
    const/16 v0, 0x23

    if-lt p1, v0, :cond_5

    const/16 v0, 0x25

    if-gt p1, v0, :cond_5

    .line 1302
    add-int/lit8 v0, p1, -0x23

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0xa

    add-int v2, v0, p2

    .line 1304
    .restart local v2       #nIndex:I
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    .line 1309
    goto :goto_1

    .end local v2           #nIndex:I
    :cond_5
    const/16 v0, 0x26

    if-lt p1, v0, :cond_2

    const/16 v0, 0x28

    if-gt p1, v0, :cond_2

    .line 1310
    add-int/lit8 v2, p1, -0x26

    .line 1312
    .restart local v2       #nIndex:I
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v0

    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMadeCode(ZIIII)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method private process34Key(Landroid/view/KeyEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v8, 0x0

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 182
    .local v4, keyCode:I
    const/4 v3, 0x0

    .line 183
    .local v3, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 188
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v4, :sswitch_data_0

    .line 278
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeNum(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 282
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeZero(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 283
    const/16 v4, 0x27

    .line 293
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeAlpha(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 294
    if-eqz p2, :cond_1

    .line 297
    invoke-direct {p0, v4, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->PreProcessKor34KeyBoard(IZ)I

    .line 298
    iput-boolean v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->spaceInputted:Z

    .line 302
    :cond_1
    const/4 v1, 0x1

    .line 308
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 311
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 312
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 313
    int-to-char v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, result:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 316
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 317
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 325
    .end local v5           #result:Ljava/lang/String;
    :cond_3
    return v1

    .line 190
    :sswitch_0
    if-eqz p2, :cond_4

    .line 194
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->clearFlags()V

    .line 195
    const/4 v6, 0x0

    .line 197
    .local v6, strMake:Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->processKorBackspace()Z

    move-result v0

    .line 201
    .local v0, bNeedDel:Z
    const/4 v7, 0x1

    if-ne v7, v0, :cond_6

    .line 202
    if-eqz p2, :cond_4

    .line 204
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_5

    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v7, :cond_5

    .line 205
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 206
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-interface {v2, v7, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 234
    .end local v0           #bNeedDel:Z
    .end local v6           #strMake:Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 236
    goto :goto_1

    .line 208
    .restart local v0       #bNeedDel:Z
    .restart local v6       #strMake:Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 209
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->simulateKeyEventDownUp(I)V

    goto :goto_2

    .line 217
    :cond_6
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v6

    .line 220
    if-eqz v2, :cond_4

    .line 221
    if-eqz v6, :cond_4

    .line 228
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 229
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_2

    .line 238
    .end local v0           #bNeedDel:Z
    .end local v6           #strMake:Ljava/lang/String;
    :sswitch_1
    if-eqz p2, :cond_7

    .line 239
    const/4 v6, 0x0

    .line 240
    .restart local v6       #strMake:Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v6

    .line 243
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    .line 244
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 245
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 247
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 248
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 254
    .end local v6           #strMake:Ljava/lang/String;
    :cond_7
    :goto_3
    const/4 v1, 0x1

    .line 256
    goto/16 :goto_1

    .line 252
    .restart local v6       #strMake:Ljava/lang/String;
    :cond_8
    const/16 v3, 0x20

    goto :goto_3

    .line 258
    .end local v6           #strMake:Ljava/lang/String;
    :sswitch_2
    if-eqz p2, :cond_9

    .line 259
    const/16 v3, 0x2e

    .line 260
    :cond_9
    const/4 v1, 0x1

    .line 262
    goto/16 :goto_1

    .line 264
    :sswitch_3
    if-eqz p2, :cond_b

    .line 265
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 266
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 268
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 269
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 272
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processEnterKey()V

    .line 274
    :cond_b
    const/4 v1, 0x1

    .line 276
    goto/16 :goto_1

    .line 285
    :cond_c
    add-int/lit8 v7, v4, -0x8

    add-int/lit8 v4, v7, 0x1d

    goto/16 :goto_0

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_2
        0x3e -> :sswitch_1
        0x42 -> :sswitch_3
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private processFunctionKeys(Landroid/view/KeyEvent;Z)Z
    .locals 4
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v3, 0x0

    .line 510
    const/4 v0, 0x0

    .line 514
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 515
    .local v1, keyCode:I
    sparse-switch v1, :sswitch_data_0

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 517
    :sswitch_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 518
    if-eqz p2, :cond_1

    .line 519
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPoundKey()V

    .line 521
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 525
    :sswitch_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 526
    if-eqz p2, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processStarKey()V

    .line 529
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 533
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Korean()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 550
    :sswitch_3
    if-eqz p2, :cond_3

    .line 553
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processBackKey()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 560
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 562
    goto :goto_0

    .line 556
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 557
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto :goto_1

    .line 564
    :sswitch_4
    if-eqz p2, :cond_5

    .line 567
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processLangKey()V

    .line 569
    :cond_5
    const/4 v0, 0x1

    .line 571
    goto :goto_0

    .line 573
    :sswitch_5
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->setHWKeyboardLedState(Z)V

    .line 574
    const/4 v0, 0x1

    goto :goto_0

    .line 515
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
        0x43 -> :sswitch_2
        0x73 -> :sswitch_5
        0xe3 -> :sswitch_4
    .end sparse-switch
.end method

.method private processKey(Landroid/view/KeyEvent;Z)Z
    .locals 5
    .parameter "event"
    .parameter "realAction"

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 477
    .local v0, bRet:Z
    const/4 v2, 0x0

    .line 478
    .local v2, isSoftKey:Z
    const/4 v1, 0x0

    .line 480
    .local v1, enterNormalState:Z
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 481
    const/4 v2, 0x1

    .line 489
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processFunctionKeys(Landroid/view/KeyEvent;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 492
    const/4 v0, 0x1

    .line 501
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 502
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 503
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    .line 506
    :cond_2
    return v0

    .line 484
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getEnterKeyNormalState()Z

    move-result v1

    .line 486
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    goto :goto_0

    .line 493
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Korean()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 494
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->process34Key(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 495
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKorean()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processQwertyKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_1
.end method

.method private processQwertyKey(Landroid/view/KeyEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v7, 0x0

    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 331
    .local v4, keyCode:I
    const/4 v3, 0x0

    .line 336
    .local v3, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 337
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_0

    .line 471
    :goto_0
    return v7

    .line 340
    :cond_0
    sparse-switch v4, :sswitch_data_0

    .line 435
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeAlpha(I)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v7

    if-nez v7, :cond_10

    .line 436
    if-eqz p2, :cond_1

    .line 437
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->ProcessQWkoreanKey(Landroid/view/KeyEvent;)V

    .line 439
    :cond_1
    const/4 v1, 0x1

    .line 457
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 460
    int-to-char v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, result:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 463
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 464
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .end local v5           #result:Ljava/lang/String;
    :cond_3
    move v7, v1

    .line 471
    goto :goto_0

    .line 343
    :sswitch_0
    if-eqz p2, :cond_4

    .line 344
    const/4 v6, 0x0

    .line 346
    .local v6, strMake:Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->processKorBackspace()Z

    move-result v0

    .line 350
    .local v0, bNeedDel:Z
    const/4 v8, 0x1

    if-ne v8, v0, :cond_6

    .line 352
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-lez v8, :cond_5

    sget-boolean v8, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v8, :cond_5

    .line 353
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 354
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-interface {v2, v8, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 380
    .end local v0           #bNeedDel:Z
    .end local v6           #strMake:Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 382
    goto :goto_1

    .line 356
    .restart local v0       #bNeedDel:Z
    .restart local v6       #strMake:Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 357
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->simulateKeyEventDownUp(I)V

    goto :goto_2

    .line 364
    :cond_6
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getMakeCode()Ljava/lang/String;

    move-result-object v6

    .line 367
    if-eqz v2, :cond_4

    .line 368
    if-eqz v6, :cond_4

    .line 375
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    goto :goto_2

    .line 384
    .end local v0           #bNeedDel:Z
    .end local v6           #strMake:Ljava/lang/String;
    :sswitch_1
    if-eqz p2, :cond_8

    .line 385
    if-eqz v2, :cond_7

    .line 386
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 388
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processEnterKey()V

    .line 390
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 391
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 396
    :cond_8
    const/4 v1, 0x1

    .line 398
    goto :goto_1

    .line 400
    :sswitch_2
    if-eqz p2, :cond_b

    .line 401
    if-eqz v2, :cond_9

    .line 402
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 404
    :cond_9
    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 405
    .restart local v5       #result:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    .line 406
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 407
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getT9KorDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->initJOHAB()V

    .line 409
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->autoPeriod()V

    .line 411
    .end local v5           #result:Ljava/lang/String;
    :cond_b
    const/4 v1, 0x1

    .line 413
    goto/16 :goto_1

    .line 415
    :sswitch_3
    if-eqz p2, :cond_d

    .line 416
    if-eqz v2, :cond_c

    .line 417
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 419
    :cond_c
    const/16 v3, 0x2e

    .line 421
    :cond_d
    const/4 v1, 0x1

    .line 423
    goto/16 :goto_1

    .line 425
    :sswitch_4
    if-eqz p2, :cond_f

    .line 426
    if-eqz v2, :cond_e

    .line 427
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 429
    :cond_e
    const/16 v3, 0x2c

    .line 431
    :cond_f
    const/4 v1, 0x1

    .line 433
    goto/16 :goto_1

    .line 443
    :cond_10
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeNum(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 444
    if-eqz p2, :cond_12

    .line 445
    if-eqz v2, :cond_11

    .line 446
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 448
    :cond_11
    add-int/lit8 v7, v4, -0x7

    add-int/lit8 v3, v7, 0x30

    .line 450
    :cond_12
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_4
        0x38 -> :sswitch_3
        0x3e -> :sswitch_2
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public clearFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34keyCount:I

    .line 163
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mkor34OldKeyCode:I

    .line 164
    return-void
.end method

.method public pickDefaultCandidate()V
    .locals 3

    .prologue
    .line 585
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    .line 586
    .local v1, imestate:Lcom/samsung/inputmethod/SamsungIME$ImeState;
    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_1

    .line 588
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 589
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 590
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 593
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    return-void
.end method

.method public processKeyDown(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, isSoftKey:Z
    const/4 v0, 0x0

    .line 57
    .local v0, bRealAction:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 59
    .local v1, count:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 60
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v3

    .line 68
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    const/4 v2, 0x1

    .line 73
    :cond_2
    if-eqz v2, :cond_3

    .line 75
    const/4 v0, 0x0

    .line 96
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 97
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyProcessedWhenLong(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 84
    if-lez v1, :cond_4

    move v3, v4

    .line 85
    goto :goto_0

    .line 87
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 88
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isHardKeyProcessedWhenUp(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 89
    const/4 v0, 0x0

    goto :goto_1

    .line 92
    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public processKeyUp(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, isSoftKey:Z
    const/4 v0, 0x0

    .line 110
    .local v0, bRealAction:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 112
    .local v1, count:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 113
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v3

    .line 122
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    const/4 v2, 0x1

    .line 127
    :cond_2
    if-eqz v2, :cond_3

    .line 129
    const/4 v0, 0x1

    .line 150
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processKey(Landroid/view/KeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 151
    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyProcessedWhenLong(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 138
    if-lez v1, :cond_4

    move v3, v4

    .line 139
    goto :goto_0

    .line 141
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 142
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isHardKeyProcessedWhenUp(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 143
    const/4 v0, 0x1

    goto :goto_1

    .line 146
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->clearFlags()V

    .line 159
    return-void
.end method

.method public setKeyboardOption()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSearchKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/16 v0, 0x1f

    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyboardOption:I

    goto :goto_0
.end method
