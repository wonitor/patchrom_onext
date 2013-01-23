.class public abstract Landroid/text/style/DynamicDrawableSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DynamicDrawableSpan.java"


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DynamicDrawableSpan"


# instance fields
.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVerticalAlignment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 52
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .parameter "verticalAlignment"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 58
    iput p1, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    .line 59
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 119
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 121
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 124
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/text/style/DynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 129
    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    .local v0, b:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 107
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p8, v2

    .line 108
    .local v1, transY:I
    iget v2, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 109
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v1, v2

    .line 112
    :cond_0
    int-to-float v2, v1

    invoke-virtual {p1, p5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    return-void
.end method

.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 5
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 83
    const-string v3, "DynamicDrawableSpan"

    const-string v4, "getCachedDrawable() is null in getSize()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return v2

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 89
    .local v1, rect:Landroid/graphics/Rect;
    if-eqz p5, :cond_1

    .line 90
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 91
    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 93
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 94
    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 97
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public getVerticalAlignment()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/text/style/DynamicDrawableSpan;->mVerticalAlignment:I

    return v0
.end method