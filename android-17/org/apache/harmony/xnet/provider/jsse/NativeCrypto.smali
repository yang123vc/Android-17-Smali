.class public final Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;
    }
.end annotation


# static fields
.field public static final OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAND_SEED_LENGTH_IN_BYTES:I = 0x400

.field public static final SSL_MODE_HANDSHAKE_CUTTHROUGH:J = 0x40L

.field public static final SSL_OP_NO_COMPRESSION:J = 0x20000L

.field public static final SSL_OP_NO_SSLv3:J = 0x2000000L

.field public static final SSL_OP_NO_TICKET:J = 0x4000L

.field public static final SSL_OP_NO_TLSv1:J = 0x4000000L

.field public static final SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I = 0x2

.field public static final SSL_VERIFY_NONE:I = 0x0

.field public static final SSL_VERIFY_PEER:I = 0x1

.field public static final STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

.field private static final SUPPORTED_COMPRESSION_METHODS:[Ljava/lang/String;

.field private static final SUPPORTED_COMPRESSION_METHOD_NULL:Ljava/lang/String; = "NULL"

.field private static final SUPPORTED_COMPRESSION_METHOD_ZLIB:Ljava/lang/String; = "ZLIB"

.field private static final SUPPORTED_PROTOCOL_SSLV3:Ljava/lang/String; = "SSLv3"

.field private static final SUPPORTED_PROTOCOL_TLSV1:Ljava/lang/String; = "TLSv1"

.field public static final TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String; = "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 46
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->clinit()V

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    .line 124
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    .line 156
    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    const-string v2, "RC4-MD5"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    const-string v2, "RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v2, "AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const-string v2, "AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const-string v2, "ECDH-ECDSA-RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v2, "ECDH-ECDSA-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v2, "ECDH-ECDSA-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const-string v2, "ECDH-RSA-RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const-string v2, "ECDH-RSA-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const-string v2, "ECDH-RSA-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const-string v2, "ECDHE-ECDSA-RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v2, "ECDHE-ECDSA-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v2, "ECDHE-ECDSA-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const-string v2, "ECDHE-RSA-RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v2, "ECDHE-RSA-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v2, "ECDHE-RSA-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v2, "DHE-RSA-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v2, "DHE-RSA-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const-string v2, "DHE-DSS-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const-string v2, "DHE-DSS-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "ECDH-ECDSA-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "ECDH-RSA-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "ECDHE-ECDSA-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "ECDHE-RSA-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "EDH-RSA-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "EDH-DSS-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    const-string v2, "DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const-string v2, "EDH-RSA-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const-string v2, "EDH-DSS-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const-string v2, "EXP-RC4-MD5"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const-string v2, "EXP-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const-string v2, "EXP-EDH-RSA-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const-string v2, "EXP-EDH-DSS-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "SSL_RSA_WITH_NULL_MD5"

    const-string v2, "NULL-MD5"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    const-string v2, "NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const-string v2, "ECDH-ECDSA-NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const-string v2, "ECDH-RSA-NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const-string v2, "ECDHE-ECDSA-NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const-string v2, "ECDHE-RSA-NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    const-string v2, "ADH-RC4-MD5"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const-string v2, "ADH-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const-string v2, "ADH-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "ADH-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const-string v2, "ADH-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const-string v2, "AECDH-RC4-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const-string v2, "AECDH-AES128-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const-string v2, "AECDH-AES256-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "AECDH-DES-CBC3-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const-string v2, "EXP-ADH-RC4-MD5"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const-string v2, "EXP-ADH-DES-CBC-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    const-string v2, "AECDH-NULL-SHA"

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 248
    .local v0, "size":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    .line 249
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 250
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v0

    .line 442
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ZLIB"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "NULL"

    aput-object v3, v1, v2

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_COMPRESSION_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    return-void
.end method

.method public static native EVP_DigestFinal(I[BI)I
.end method

.method public static native EVP_DigestInit(I)I
.end method

.method public static native EVP_DigestUpdate(I[BII)V
.end method

.method public static native EVP_MD_CTX_copy(I)I
.end method

.method public static native EVP_MD_CTX_destroy(I)V
.end method

.method public static native EVP_MD_block_size(I)I
.end method

.method public static native EVP_MD_size(I)I
.end method

.method public static native EVP_PKEY_free(I)V
.end method

.method public static native EVP_PKEY_new_DSA([B[B[B[B[B)I
.end method

.method public static native EVP_PKEY_new_RSA([B[B[B[B[B)I
.end method

.method public static native EVP_VerifyFinal(I[BIII)I
.end method

.method public static native EVP_VerifyInit(Ljava/lang/String;)I
.end method

.method public static native EVP_VerifyUpdate(I[BII)V
.end method

.method public static native EVP_get_digestbyname(Ljava/lang/String;)I
.end method

.method public static native RAND_load_file(Ljava/lang/String;J)I
.end method

.method public static native RAND_seed([B)V
.end method

.method public static native SSL_CTX_free(I)V
.end method

.method public static native SSL_CTX_new()I
.end method

.method public static native SSL_SESSION_cipher(I)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_compress_meth(II)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_free(I)V
.end method

.method public static native SSL_SESSION_get_time(I)J
.end method

.method public static native SSL_SESSION_get_version(I)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_session_id(I)[B
.end method

.method public static native SSL_check_private_key(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_clear_mode(IJ)J
.end method

.method public static native SSL_clear_options(IJ)J
.end method

.method public static native SSL_do_handshake(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public static native SSL_free(I)V
.end method

.method public static native SSL_get_certificate(I)[[B
.end method

.method public static native SSL_get_mode(I)J
.end method

.method public static native SSL_get_options(I)J
.end method

.method public static native SSL_get_peer_cert_chain(I)[[B
.end method

.method public static native SSL_get_servername(I)Ljava/lang/String;
.end method

.method public static native SSL_interrupt(I)V
.end method

.method public static native SSL_new(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_read(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_renegotiate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_cipher_lists(I[Ljava/lang/String;)V
.end method

.method public static native SSL_set_client_CA_list(I[[B)V
.end method

.method public static native SSL_set_mode(IJ)J
.end method

.method public static native SSL_set_options(IJ)J
.end method

.method public static native SSL_set_session(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_session_creation_enabled(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_tlsext_host_name(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_verify(II)V
.end method

.method public static native SSL_shutdown(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_use_PrivateKey(I[B)V
.end method

.method public static native SSL_use_certificate(I[[B)V
.end method

.method public static native SSL_write(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;)I
    .registers 2
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 103
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I
    .registers 6
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 111
    .local v0, "digest":[B
    const/4 v2, 0x0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_14

    move-result v2

    return v2

    .line 112
    .end local v0    # "digest":[B
    :catch_14
    move-exception v1

    .line 113
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I
    .registers 2
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 106
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "standard"    # Ljava/lang/String;
    .param p1, "openssl"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public static checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 415
    if-nez p0, :cond_a

    .line 416
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cipherSuites == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_6b

    .line 420
    aget-object v0, p0, v1

    .line 421
    .local v0, "cipherSuite":Ljava/lang/String;
    if-nez v0, :cond_31

    .line 422
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cipherSuites["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 424
    :cond_31
    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 419
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 427
    :cond_3c
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 430
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 434
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cipherSuite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    .end local v0    # "cipherSuite":Ljava/lang/String;
    :cond_6b
    return-object p0
.end method

.method public static checkEnabledCompressionMethods([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "methods"    # [Ljava/lang/String;

    .prologue
    .line 454
    if-nez p0, :cond_a

    .line 455
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "methods == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    :cond_a
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_23

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    const-string v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 459
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "last method must be NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 461
    :cond_23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    array-length v2, p0

    if-ge v0, v2, :cond_7c

    .line 462
    aget-object v1, p0, v0

    .line 463
    .local v1, "method":Ljava/lang/String;
    if-nez v1, :cond_4a

    .line 464
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "methods["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 466
    :cond_4a
    const-string v2, "ZLIB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "NULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 468
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 461
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 472
    .end local v1    # "method":Ljava/lang/String;
    :cond_7c
    return-object p0
.end method

.method public static checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 380
    if-nez p0, :cond_a

    .line 381
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "protocols == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_63

    .line 384
    aget-object v1, p0, v0

    .line 385
    .local v1, "protocol":Ljava/lang/String;
    if-nez v1, :cond_31

    .line 386
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocols["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :cond_31
    const-string v2, "SSLv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    const-string v2, "TLSv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 390
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 394
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_63
    return-object p0
.end method

.method private static native clinit()V
.end method

.method public static native d2i_SSL_SESSION([B)I
.end method

.method public static encodeCertificates([Ljava/security/cert/Certificate;)[[B
    .registers 4
    .param p0, "certificates"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 314
    array-length v2, p0

    new-array v0, v2, [[B

    .line 315
    .local v0, "certificateBytes":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 316
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 318
    :cond_12
    return-object v0
.end method

.method public static encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .registers 4
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 329
    array-length v2, p0

    new-array v1, v2, [[B

    .line 330
    .local v1, "principalBytes":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_16

    .line 331
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 333
    :cond_16
    return-object v1
.end method

.method public static getDefaultCipherSuites()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 265
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SSL_RSA_WITH_RC4_128_MD5"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SSL_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SSL_RSA_WITH_DES_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static final getDefaultCompressionMethods()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 450
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NULL"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getSupportedCipherSuites()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 305
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedCompressionMethods()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 446
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SUPPORTED_COMPRESSION_METHODS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedProtocols()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 351
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SSLv3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TLSv1"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static native i2d_SSL_SESSION(I)[B
.end method

.method public static setEnabledCipherSuites(I[Ljava/lang/String;)V
    .registers 8
    .param p0, "ssl"    # I
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 400
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    .line 401
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v4, "opensslSuites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v5, p1

    if-ge v2, v5, :cond_2a

    .line 403
    aget-object v0, p1, v2

    .line 404
    .local v0, "cipherSuite":Ljava/lang/String;
    const-string v5, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 402
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 407
    :cond_19
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 408
    .local v3, "openssl":Ljava/lang/String;
    if-nez v3, :cond_28

    move-object v1, v0

    .line 409
    .local v1, "cs":Ljava/lang/String;
    :goto_24
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .end local v1    # "cs":Ljava/lang/String;
    :cond_28
    move-object v1, v3

    .line 408
    goto :goto_24

    .line 411
    .end local v0    # "cipherSuite":Ljava/lang/String;
    .end local v3    # "openssl":Ljava/lang/String;
    :cond_2a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {p0, v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_cipher_lists(I[Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public static setEnabledCompressionMethods(I[Ljava/lang/String;)V
    .registers 10
    .param p0, "ssl"    # I
    .param p1, "methods"    # [Ljava/lang/String;

    .prologue
    .line 476
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCompressionMethods([Ljava/lang/String;)[Ljava/lang/String;

    .line 480
    const-wide/32 v4, 0x20000

    .line 481
    .local v4, "optionsToSet":J
    const-wide/16 v2, 0x0

    .line 482
    .local v2, "optionsToClear":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v6, p1

    if-ge v0, v6, :cond_30

    .line 483
    aget-object v1, p1, v0

    .line 484
    .local v1, "method":Ljava/lang/String;
    const-string v6, "NULL"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 482
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 486
    :cond_19
    const-string v6, "ZLIB"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 487
    const-wide/32 v6, -0x20001

    and-long/2addr v4, v6

    .line 488
    const-wide/32 v6, 0x20000

    or-long/2addr v2, v6

    goto :goto_16

    .line 491
    :cond_2a
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 495
    .end local v1    # "method":Ljava/lang/String;
    :cond_30
    invoke-static {p0, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_options(IJ)J

    .line 496
    invoke-static {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_options(IJ)J

    .line 497
    return-void
.end method

.method public static setEnabledProtocols(I[Ljava/lang/String;)V
    .registers 10
    .param p0, "ssl"    # I
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    .line 359
    const-wide/32 v3, 0x6000000

    .line 360
    .local v3, "optionsToSet":J
    const-wide/16 v1, 0x0

    .line 361
    .local v1, "optionsToClear":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v6, p1

    if-ge v0, v6, :cond_38

    .line 362
    aget-object v5, p1, v0

    .line 363
    .local v5, "protocol":Ljava/lang/String;
    const-string v6, "SSLv3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 364
    const-wide/32 v6, -0x2000001

    and-long/2addr v3, v6

    .line 365
    const-wide/32 v6, 0x2000000

    or-long/2addr v1, v6

    .line 361
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 366
    :cond_21
    const-string v6, "TLSv1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 367
    const-wide/32 v6, -0x4000001

    and-long/2addr v3, v6

    .line 368
    const-wide/32 v6, 0x4000000

    or-long/2addr v1, v6

    goto :goto_1e

    .line 371
    :cond_32
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 375
    .end local v5    # "protocol":Ljava/lang/String;
    :cond_38
    invoke-static {p0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_options(IJ)J

    .line 376
    invoke-static {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_options(IJ)J

    .line 377
    return-void
.end method
