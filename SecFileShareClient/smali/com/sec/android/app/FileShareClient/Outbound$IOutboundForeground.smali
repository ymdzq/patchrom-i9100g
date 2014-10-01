.class public interface abstract Lcom/sec/android/app/FileShareClient/Outbound$IOutboundForeground;
.super Ljava/lang/Object;
.source "Outbound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileShareClient/Outbound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOutboundForeground"
.end annotation


# virtual methods
.method public abstract acquireWakeLock()V
.end method

.method public abstract releaseWakeLock()V
.end method

.method public abstract startOutboundForeground()V
.end method

.method public abstract stopOutboundForeground()V
.end method
