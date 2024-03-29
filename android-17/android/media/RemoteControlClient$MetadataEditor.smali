.class public Landroid/media/RemoteControlClient$MetadataEditor;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# static fields
.field public static final BITMAP_KEY_ARTWORK:I = 0x64

.field public static final METADATA_KEY_ARTWORK:I = 0x64


# instance fields
.field private mApplied:Z

.field protected mArtworkChanged:Z

.field protected mEditorArtwork:Landroid/graphics/Bitmap;

.field protected mEditorMetadata:Landroid/os/Bundle;

.field protected mMetadataChanged:Z

.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method private constructor <init>(Landroid/media/RemoteControlClient;)V
    .registers 3

    .prologue
    .line 315
    iput-object p1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/RemoteControlClient;
    .param p2, "x1"    # Landroid/media/RemoteControlClient$1;

    .prologue
    .line 295
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .registers 5

    .prologue
    .line 447
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v0, :cond_e

    .line 448
    const-string v0, "RemoteControlClient"

    const-string v1, "Can\'t apply a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_5e

    .line 471
    :goto_c
    monitor-exit p0

    return-void

    .line 451
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_5e

    .line 453
    :try_start_15
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    # setter for: Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->access$702(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 454
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$800(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$800(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 455
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$800(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 457
    :cond_40
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    # setter for: Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->access$802(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 459
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    iget-boolean v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    and-int/2addr v0, v2

    if-eqz v0, :cond_61

    .line 461
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->sendMetadataWithArtwork_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$900(Landroid/media/RemoteControlClient;)V

    .line 469
    :cond_56
    :goto_56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    .line 470
    monitor-exit v1

    goto :goto_c

    :catchall_5b
    move-exception v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_15 .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    .line 447
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 462
    :cond_61
    :try_start_61
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    if-eqz v0, :cond_6b

    .line 464
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)V

    goto :goto_56

    .line 465
    :cond_6b
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    if-eqz v0, :cond_56

    .line 467
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1100(Landroid/media/RemoteControlClient;)V
    :try_end_74
    .catchall {:try_start_61 .. :try_end_74} :catchall_5b

    goto :goto_56
.end method

.method public declared-synchronized clear()V
    .registers 3

    .prologue
    .line 432
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v0, :cond_e

    .line 433
    const-string v0, "RemoteControlClient"

    const-string v1, "Can\'t clear a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_17

    .line 438
    :goto_c
    monitor-exit p0

    return-void

    .line 436
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_17

    goto :goto_c

    .line 432
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public declared-synchronized putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 7
    .param p1, "key"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 409
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v1, :cond_f

    .line 410
    const-string v1, "RemoteControlClient"

    const-string v2, "Can\'t edit a previously applied MetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2c

    move-object v0, p0

    .line 424
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .local v0, "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :goto_d
    monitor-exit p0

    return-object v0

    .line 413
    .end local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_f
    const/16 v1, 0x64

    if-eq p1, v1, :cond_2f

    .line 414
    :try_start_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'Bitmap\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2c

    .line 409
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 416
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$300(Landroid/media/RemoteControlClient;)I

    move-result v1

    if-lez v1, :cond_58

    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$400(Landroid/media/RemoteControlClient;)I

    move-result v1

    if-lez v1, :cond_58

    .line 417
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I
    invoke-static {v2}, Landroid/media/RemoteControlClient;->access$300(Landroid/media/RemoteControlClient;)I

    move-result v2

    iget-object v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I
    invoke-static {v3}, Landroid/media/RemoteControlClient;->access$400(Landroid/media/RemoteControlClient;)I

    move-result v3

    # invokes: Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v1, p2, v2, v3}, Landroid/media/RemoteControlClient;->access$500(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 423
    :goto_53
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    move-object v0, p0

    .line 424
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    goto :goto_d

    .line 421
    .end local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_58
    iput-object p2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_5a
    .catchall {:try_start_2f .. :try_end_5a} :catchall_2c

    goto :goto_53
.end method

.method public declared-synchronized putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 8
    .param p1, "key"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 385
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v1, :cond_f

    .line 386
    const-string v1, "RemoteControlClient"

    const-string v2, "Can\'t edit a previously applied MetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_32

    move-object v0, p0

    .line 394
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .local v0, "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :goto_d
    monitor-exit p0

    return-object v0

    .line 389
    .end local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_f
    :try_start_f
    # getter for: Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_LONG:[I
    invoke-static {}, Landroid/media/RemoteControlClient;->access$200()[I

    move-result-object v1

    # invokes: Landroid/media/RemoteControlClient;->validTypeForKey(I[I)Z
    invoke-static {p1, v1}, Landroid/media/RemoteControlClient;->access$100(I[I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 390
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'long\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_32

    .line 385
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1

    .line 392
    :cond_35
    :try_start_35
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_32

    move-object v0, p0

    .line 394
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    goto :goto_d
.end method

.method public declared-synchronized putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 7
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 356
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v1, :cond_f

    .line 357
    const-string v1, "RemoteControlClient"

    const-string v2, "Can\'t edit a previously applied MetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_32

    move-object v0, p0

    .line 365
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .local v0, "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :goto_d
    monitor-exit p0

    return-object v0

    .line 360
    .end local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_f
    :try_start_f
    # getter for: Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_STRING:[I
    invoke-static {}, Landroid/media/RemoteControlClient;->access$000()[I

    move-result-object v1

    # invokes: Landroid/media/RemoteControlClient;->validTypeForKey(I[I)Z
    invoke-static {p1, v1}, Landroid/media/RemoteControlClient;->access$100(I[I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 361
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'String\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_32

    .line 356
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1

    .line 363
    :cond_35
    :try_start_35
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_32

    move-object v0, p0

    .line 365
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    goto :goto_d
.end method
