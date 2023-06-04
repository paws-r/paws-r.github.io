<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesis_start_stream_encryption</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables or updates server-side encryption using an Amazon Web Services KMS key for a specified stream

### Description

Enables or updates server-side encryption using an Amazon Web Services
KMS key for a specified stream.

Starting encryption is an asynchronous operation. Upon receiving the
request, Kinesis Data Streams returns immediately and sets the status of
the stream to `UPDATING`. After the update is complete, Kinesis Data
Streams sets the status of the stream back to `ACTIVE`. Updating or
applying encryption normally takes a few seconds to complete, but it can
take minutes. You can continue to read and write data to your stream
while its status is `UPDATING`. Once the status of the stream is
`ACTIVE`, encryption begins for records written to the stream.

API Limits: You can successfully apply a new Amazon Web Services KMS key
for server-side encryption 25 times in a rolling 24-hour period.

Note: It can take up to 5 seconds after the stream is in an `ACTIVE`
status before all records written to the stream are encrypted. After you
enable encryption, you can verify that encryption is applied by
inspecting the API response from `put_record` or `put_records`.

When invoking this API, it is recommended you use the `StreamARN` input
parameter rather than the `StreamName` input parameter.

### Usage

    kinesis_start_stream_encryption(StreamName, EncryptionType, KeyId,
      StreamARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesis_start_stream_encryption_:_StreamName">StreamName</code></td>
<td><p>The name of the stream for which to start encrypting
records.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesis_start_stream_encryption_:_EncryptionType">EncryptionType</code></td>
<td><p>[required] The encryption type to use. The only valid value is
<code>KMS</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="kinesis_start_stream_encryption_:_KeyId">KeyId</code></td>
<td><p>[required] The GUID for the customer-managed Amazon Web Services
KMS key to use for encryption. This value can be a globally unique
identifier, a fully specified Amazon Resource Name (ARN) to either an
alias or a key, or an alias name prefixed by "alias/".You can also use a
master key owned by Kinesis Data Streams by specifying the alias
<code>aws/kinesis</code>.</p>
<ul>
<li><p>Key ARN example:
<code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code></p></li>
<li><p>Alias ARN example:
<code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code></p></li>
<li><p>Globally unique key ID example:
<code>12345678-1234-1234-1234-123456789012</code></p></li>
<li><p>Alias name example: <code>alias/MyAliasName</code></p></li>
<li><p>Master key owned by Kinesis Data Streams:
<code>alias/aws/kinesis</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="kinesis_start_stream_encryption_:_StreamARN">StreamARN</code></td>
<td><p>The ARN of the stream.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_stream_encryption(
      StreamName = "string",
      EncryptionType = "NONE"|"KMS",
      KeyId = "string",
      StreamARN = "string"
    )
