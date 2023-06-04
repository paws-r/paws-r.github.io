<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_create_tape_with_barcode</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a virtual tape by using your own barcode

### Description

Creates a virtual tape by using your own barcode. You write data to the
virtual tape and then archive the tape. A barcode is unique and cannot
be reused if it has already been used on a tape. This applies to
barcodes used on deleted tapes. This operation is only supported in the
tape gateway type.

Cache storage must be allocated to the gateway before you can create a
virtual tape. Use the `add_cache` operation to add cache storage to a
gateway.

### Usage

    storagegateway_create_tape_with_barcode(GatewayARN, TapeSizeInBytes,
      TapeBarcode, KMSEncrypted, KMSKey, PoolId, Worm, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_create_tape_with_barcode_:_GatewayARN">GatewayARN</code></td>
<td><p>[required] The unique Amazon Resource Name (ARN) that represents
the gateway to associate the virtual tape with. Use the
<code>list_gateways</code> operation to return a list of gateways for
your account and Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_tape_with_barcode_:_TapeSizeInBytes">TapeSizeInBytes</code></td>
<td><p>[required] The size, in bytes, of the virtual tape that you want
to create.</p>
<p>The size must be aligned by gigabyte (1024<em>1024</em>1024
bytes).</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_tape_with_barcode_:_TapeBarcode">TapeBarcode</code></td>
<td><p>[required] The barcode that you want to assign to the tape.</p>
<p>Barcodes cannot be reused. This includes barcodes used for tapes that
have been deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_tape_with_barcode_:_KMSEncrypted">KMSEncrypted</code></td>
<td><p>Set to <code>true</code> to use Amazon S3 server-side encryption
with your own KMS key, or <code>false</code> to use a key managed by
Amazon S3. Optional.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_tape_with_barcode_:_KMSKey">KMSKey</code></td>
<td><p>The Amazon Resource Name (ARN) of a symmetric customer master key
(CMK) used for Amazon S3 server-side encryption. Storage Gateway does
not support asymmetric CMKs. This value can only be set when
<code>KMSEncrypted</code> is <code>true</code>. Optional.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_tape_with_barcode_:_PoolId">PoolId</code></td>
<td><p>The ID of the pool that you want to add your tape to for
archiving. The tape in this pool is archived in the S3 storage class
that is associated with the pool. When you use your backup application
to eject the tape, the tape is archived directly into the storage class
(S3 Glacier or S3 Deep Archive) that corresponds to the pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_tape_with_barcode_:_Worm">Worm</code></td>
<td><p>Set to <code>TRUE</code> if the tape you are creating is to be
configured as a write-once-read-many (WORM) tape.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_tape_with_barcode_:_Tags">Tags</code></td>
<td><p>A list of up to 50 tags that can be assigned to a virtual tape
that has a barcode. Each tag is a key-value pair.</p>
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
      TapeARN = "string"
    )

### Request syntax

    svc$create_tape_with_barcode(
      GatewayARN = "string",
      TapeSizeInBytes = 123,
      TapeBarcode = "string",
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
    # Creates a virtual tape by using your own barcode.
    svc$create_tape_with_barcode(
      GatewayARN = "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
      TapeBarcode = "TEST12345",
      TapeSizeInBytes = 107374182400
    )

    ## End(Not run)
