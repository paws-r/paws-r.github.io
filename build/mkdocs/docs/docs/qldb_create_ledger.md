<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_create_ledger</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new ledger in your Amazon Web Services account in the current Region

### Description

Creates a new ledger in your Amazon Web Services account in the current
Region.

### Usage

    qldb_create_ledger(Name, Tags, PermissionsMode, DeletionProtection,
      KmsKey)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_create_ledger_:_Name">Name</code></td>
<td><p>[required] The name of the ledger that you want to create. The
name must be unique among all of the ledgers in your Amazon Web Services
account in the current Region.</p>
<p>Naming constraints for ledger names are defined in <a
href="https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming">Quotas
in Amazon QLDB</a> in the <em>Amazon QLDB Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="qldb_create_ledger_:_Tags">Tags</code></td>
<td><p>The key-value pairs to add as tags to the ledger that you want to
create. Tag keys are case sensitive. Tag values are case sensitive and
can be null.</p></td>
</tr>
<tr class="odd">
<td><code
id="qldb_create_ledger_:_PermissionsMode">PermissionsMode</code></td>
<td><p>[required] The permissions mode to assign to the ledger that you
want to create. This parameter can have one of the following values:</p>
<ul>
<li><p><code>ALLOW_ALL</code>: A legacy permissions mode that enables
access control with API-level granularity for ledgers.</p>
<p>This mode allows users who have the <code>SendCommand</code> API
permission for this ledger to run all PartiQL commands (hence,
<code>ALLOW_ALL</code>) on any tables in the specified ledger. This mode
disregards any table-level or command-level IAM permissions policies
that you create for the ledger.</p></li>
<li><p><code>STANDARD</code>: (<em>Recommended</em>) A permissions mode
that enables access control with finer granularity for ledgers, tables,
and PartiQL commands.</p>
<p>By default, this mode denies all user requests to run any PartiQL
commands on any tables in this ledger. To allow PartiQL commands to run,
you must create IAM permissions policies for specific table resources
and PartiQL actions, in addition to the <code>SendCommand</code> API
permission for the ledger. For information, see <a
href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html">Getting
started with the standard permissions mode</a> in the <em>Amazon QLDB
Developer Guide</em>.</p></li>
</ul>
<p>We strongly recommend using the <code>STANDARD</code> permissions
mode to maximize the security of your ledger data.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_create_ledger_:_DeletionProtection">DeletionProtection</code></td>
<td><p>Specifies whether the ledger is protected from being deleted by
any user. If not defined during ledger creation, this feature is enabled
(<code>true</code>) by default.</p>
<p>If deletion protection is enabled, you must first disable it before
you can delete the ledger. You can disable it by calling the
<code>update_ledger</code> operation to set this parameter to
<code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="qldb_create_ledger_:_KmsKey">KmsKey</code></td>
<td><p>The key in Key Management Service (KMS) to use for encryption of
data at rest in the ledger. For more information, see <a
href="https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html">Encryption
at rest</a> in the <em>Amazon QLDB Developer Guide</em>.</p>
<p>Use one of the following options to specify this parameter:</p>
<ul>
<li><p><code>AWS_OWNED_KMS_KEY</code>: Use an KMS key that is owned and
managed by Amazon Web Services on your behalf.</p></li>
<li><p><strong>Undefined</strong>: By default, use an Amazon Web
Services owned KMS key.</p></li>
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
      PermissionsMode = "ALLOW_ALL"|"STANDARD",
      DeletionProtection = TRUE|FALSE,
      KmsKeyArn = "string"
    )

### Request syntax

    svc$create_ledger(
      Name = "string",
      Tags = list(
        "string"
      ),
      PermissionsMode = "ALLOW_ALL"|"STANDARD",
      DeletionProtection = TRUE|FALSE,
      KmsKey = "string"
    )
