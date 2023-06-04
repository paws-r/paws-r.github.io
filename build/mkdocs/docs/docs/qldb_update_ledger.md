<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_update_ledger</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates properties on a ledger

### Description

Updates properties on a ledger.

### Usage

    qldb_update_ledger(Name, DeletionProtection, KmsKey)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_update_ledger_:_Name">Name</code></td>
<td><p>[required] The name of the ledger.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_update_ledger_:_DeletionProtection">DeletionProtection</code></td>
<td><p>Specifies whether the ledger is protected from being deleted by
any user. If not defined during ledger creation, this feature is enabled
(<code>true</code>) by default.</p>
<p>If deletion protection is enabled, you must first disable it before
you can delete the ledger. You can disable it by calling the
<code>update_ledger</code> operation to set this parameter to
<code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="qldb_update_ledger_:_KmsKey">KmsKey</code></td>
<td><p>The key in Key Management Service (KMS) to use for encryption of
data at rest in the ledger. For more information, see <a
href="https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html">Encryption
at rest</a> in the <em>Amazon QLDB Developer Guide</em>.</p>
<p>Use one of the following options to specify this parameter:</p>
<ul>
<li><p><code>AWS_OWNED_KMS_KEY</code>: Use an KMS key that is owned and
managed by Amazon Web Services on your behalf.</p></li>
<li><p><strong>Undefined</strong>: Make no changes to the KMS key of the
ledger.</p></li>
<li><p><strong>A valid symmetric customer managed KMS key</strong>: Use
the specified symmetric encryption KMS key in your account that you
create, own, and manage.</p>
<p>Amazon QLDB does not support asymmetric keys. For more information,
see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using
symmetric and asymmetric keys</a> in the <em>Key Management Service
Developer Guide</em>.</p></li>
</ul>
<p>To specify a customer managed KMS key, you can use its key ID, Amazon
Resource Name (ARN), alias name, or alias ARN. When using an alias name,
prefix it with <code>"alias/"</code>. To specify a key in a different
Amazon Web Services account, you must use the key ARN or alias ARN.</p>
<p>For example:</p>
<ul>
<li><p>Key ID: <code
style="white-space: pre;">⁠1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Key ARN: <code
style="white-space: pre;">⁠arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Alias name: <code>alias/ExampleAlias</code></p></li>
<li><p>Alias ARN:
<code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code></p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id">Key
identifiers (KeyId)</a> in the <em>Key Management Service Developer
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Arn = "string",
      State = "CREATING"|"ACTIVE"|"DELETING"|"DELETED",
      CreationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      DeletionProtection = TRUE|FALSE,
      EncryptionDescription = list(
        KmsKeyArn = "string",
        EncryptionStatus = "ENABLED"|"UPDATING"|"KMS_KEY_INACCESSIBLE",
        InaccessibleKmsKeyDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$update_ledger(
      Name = "string",
      DeletionProtection = TRUE|FALSE,
      KmsKey = "string"
    )
