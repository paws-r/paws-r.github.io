<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_put_encryption_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the encryption configuration for X-Ray data

### Description

Updates the encryption configuration for X-Ray data.

### Usage

    xray_put_encryption_config(KeyId, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_put_encryption_config_:_KeyId">KeyId</code></td>
<td><p>An Amazon Web Services KMS key in one of the following
formats:</p>
<ul>
<li><p><strong>Alias</strong> - The name of the key. For example,
<code>alias/MyKey</code>.</p></li>
<li><p><strong>Key ID</strong> - The KMS key ID of the key. For example,
<code
style="white-space: pre;">⁠ae4aa6d49-a4d8-9df9-a475-4ff6d7898456⁠</code>.
Amazon Web Services X-Ray does not support asymmetric KMS keys.</p></li>
<li><p><strong>ARN</strong> - The full Amazon Resource Name of the key
ID or alias. For example, <code
style="white-space: pre;">⁠arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456⁠</code>.
Use this format to specify a key in a different account.</p></li>
</ul>
<p>Omit this key if you set <code>Type</code> to
<code>NONE</code>.</p></td>
</tr>
<tr class="even">
<td><code id="xray_put_encryption_config_:_Type">Type</code></td>
<td><p>[required] The type of encryption. Set to <code>KMS</code> to use
your own key for encryption. Set to <code>NONE</code> for default
encryption.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EncryptionConfig = list(
        KeyId = "string",
        Status = "UPDATING"|"ACTIVE",
        Type = "NONE"|"KMS"
      )
    )

### Request syntax

    svc$put_encryption_config(
      KeyId = "string",
      Type = "NONE"|"KMS"
    )
