.class final Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;
.super Ljava/lang/Object;
.source "NfcAdapter.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LegacyCallbackWrapper"
.end annotation


# instance fields
.field final mLegacyCallback:Landroid/nfc/NfcAdapter$NdefPushCallback;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter$NdefPushCallback;)V
    .registers 2
    .param p1, "legacyCallback"    # Landroid/nfc/NfcAdapter$NdefPushCallback;

    .prologue
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput-object p1, p0, Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;->mLegacyCallback:Landroid/nfc/NfcAdapter$NdefPushCallback;

    .line 834
    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .registers 3
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 841
    iget-object v0, p0, Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;->mLegacyCallback:Landroid/nfc/NfcAdapter$NdefPushCallback;

    invoke-interface {v0}, Landroid/nfc/NfcAdapter$NdefPushCallback;->createMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method

.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 837
    iget-object v0, p0, Landroid/nfc/NfcAdapter$LegacyCallbackWrapper;->mLegacyCallback:Landroid/nfc/NfcAdapter$NdefPushCallback;

    invoke-interface {v0}, Landroid/nfc/NfcAdapter$NdefPushCallback;->onMessagePushed()V

    .line 838
    return-void
.end method
