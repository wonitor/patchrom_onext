.class final Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThumbnailImageInfo"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public fileTime:J

.field public thumbnailImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "path"
    .parameter "time"
    .parameter "thumbnail"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    .line 68
    iput-wide p2, p0, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->fileTime:J

    .line 69
    iput-object p4, p0, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    .line 70
    return-void
.end method