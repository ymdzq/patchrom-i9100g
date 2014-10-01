.class public interface abstract Lcom/sec/android/app/FileShareClient/Outbound$IOutboundListener;
.super Ljava/lang/Object;
.source "Outbound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileShareClient/Outbound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOutboundListener"
.end annotation


# virtual methods
.method public abstract Invalidate(Z)V
.end method

.method public abstract completed()V
.end method

.method public abstract readyFilelist()V
.end method

.method public abstract updateReciver()V
.end method
