<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_create_tapes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates one or more virtual tapes

### Description

Creates one or more virtual tapes. You write data to the virtual tapes
and then archive the tapes. This operation is only supported in the tape
gateway type.

Cache storage must be allocated to the gateway before you can create
virtual tapes. Use the `add_cache` operation to add cache storage to a
gateway.

### Usage

    storagegateway_create_tapes(GatewayARN, TapeSizeInBytes, ClientToken,
      NumTapesToCreate, TapeBarcodePrefix, KMSEncrypted, KMSKey, PoolId, Worm,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_create_tapes_:_GatewayARN">GatewayARN</code></td>
<td><p>[required] The unique Amazon Resource Name (ARN) that represents
the gateway to associate the virtual tapes with. Use the
<code>list_gateways</code> operation to return a list of gateways for
your account and Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_tapes_:_TapeSizeInBytes">TapeSizeInBytes</code></td>
<td><p>[required] The size, in bytes, of the virtual tapes that you want
to create.</p>
<p>The size must be aligned by gigabyte (1024<em>1024</em>1024
bytes).</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_tapes_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique identifier that you use to retry a request.
If you retry a request, use the same <code>ClientToken</code> you
specified in the initial request.</p>
<p>Using the same <code>ClientToken</code> prevents creating the tape
multiple times.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_tapes_:_NumTapesToCreate">NumTapesToCreate</code></td>
<td><p>[required] The number of virtual tapes that you want to
create.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_tapes_:_TapeBarcodePrefix">TapeBarcodePrefix</code></td>
<td><p>[required] A prefix that you append to the barcode of the virtual
tape you are creating. This prefix makes the barcode unique.</p>
<p>The prefix must be 1-4 characters in length and must be one of the
uppercase letters from A to Z.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_tapes_:_KMSEncrypted">KMSEncrypted</code></td>
<td><p>Set to <code>true</code> to use Amazon S3 server-side encryption
with your own KMS key, or <code>false</code> to use a key managed by
Amazon S3. Optional.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code id="storagegateway_create_tapes_:_KMSKey">KMSKey</code></td>
<td><p>The Amazon Resource Name (ARN) of a symmetric customer master key
(CMK) used for Amazon S3 server-side encryption. Storage Gateway does
not support asymmetric CMKs. This value can only be set when
<code>KMSEncrypted</code> is <code>true</code>. Optional.</p></td>
</tr>
<tr class="even">
<td><code id="storagegateway_create_tapes_:_PoolId">PoolId</code></td>
<td><p>The ID of the pool that you want to add your tape to for
archiving. The tape in this pool is archived in the S3 storage class
that is associated with the pool. When you use your backup application
to eject the tape, the tape is archived directly into the storage class
(S3 Glacier or S3 Glacier Deep Archive) that corresponds to the
pool.</p></td>
</tr>
<tr class="odd">
<td><code id="storagegateway_create_tapes_:_Worm">Worm</code></td>
<td><p>Set to <code>TRUE</code> if the tape you are creating is to be
configured as a write-once-read-many (WORM) tape.</p></td>
</tr>
<tr class="even">
<td><code id="storagegateway_create_tapes_:_Tags">Tags</code></td>
<td><p>A list of up to 50 tags that can be assigned to a virtual tape.
Each tag is a key-value pair.</p>
<p>Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: + -
= . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TapeARNs = list(
        "string"
      )
    )

### Request syntax

    svc$create_tapes(
      GatewayARN = "string",
      TapeSizeInBytes = 123,
      ClientToken = "string",
      NumTapesToCreate = 123,
      TapeBarcodePrefix = "string",
      KMSEncrypted = TRUE|FALSE,
      KMSKey = "string",
      PoolId = "string",
      Worm = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # Creates one or more virtual tapes.
    svc$create_tapes(
      ClientToken = "77777",
      GatewayARN = "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
      NumTapesToCreate = 3L,
      TapeBarcodePrefix = "TEST",
      TapeSizeInBytes = 107374182400
    )

    ## End(Not run)
