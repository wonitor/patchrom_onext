.class public Lcom/android/camera/io/SaveVideoTask;
.super Lcom/android/camera/io/SaveMediaTask;
.source "SaveVideoTask.java"


# instance fields
.field public volatile duration:J

.field public volatile filePath:Lcom/android/camera/io/DCFPath;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "cameraThread"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/io/SaveMediaTask;-><init>(Lcom/android/camera/CameraThread;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getAvailableFileName()Lcom/android/camera/io/DCFPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/io/SaveVideoTask;->filePath:Lcom/android/camera/io/DCFPath;

    return-object v0
.end method

.method protected onInsertIntoMediaStore(Lcom/android/camera/MediaInfo;)Landroid/net/Uri;
    .locals 17
    .parameter "mediaInfo"

    .prologue
    .line 45
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/camera/io/SaveVideoTask;->takenDateTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 50
    :try_start_0
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/io/SaveVideoTask;->filePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v1}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v12, file:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    .line 58
    .end local v12           #file:Ljava/io/File;
    .local v13, modifiedTime:J
    :goto_0
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/camera/io/SaveVideoTask;->takenDateTime:J

    .line 62
    .end local v13           #modifiedTime:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/io/SaveMediaTask;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/io/SaveVideoTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/io/SaveVideoTask;->filePath:Lcom/android/camera/io/DCFPath;

    iget-object v3, v3, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/io/SaveVideoTask;->filePath:Lcom/android/camera/io/DCFPath;

    iget-object v4, v4, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/io/SaveVideoTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/camera/io/SaveVideoTask;->takenDateTime:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/camera/io/SaveVideoTask;->duration:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v9, v15

    const-wide/16 v15, 0x3e8

    mul-long/2addr v9, v15

    invoke-static/range {v1 .. v10}, Lcom/android/camera/MediaProvider;->insertVideo(Landroid/content/Context;Lcom/android/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Lcom/android/camera/io/FileFormat;JJ)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 53
    :catch_0
    move-exception v11

    .line 55
    .local v11, ex:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/io/SaveMediaTask;->TAG:Ljava/lang/String;

    const-string v2, "onInsertIntoMediaStore() - Cannot get video file modified time"

    invoke-static {v1, v2, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    const-wide/16 v13, 0x0

    .restart local v13       #modifiedTime:J
    goto :goto_0
.end method

.method protected onSaveMediaToFile(Lcom/android/camera/io/Path;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method