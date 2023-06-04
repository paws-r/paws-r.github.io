<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_delete_imported_key_material</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes key material that you previously imported

### Description

Deletes key material that you previously imported. This operation makes
the specified KMS key unusable. For more information about importing key
material into KMS, see [Importing Key
Material](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the *Key Management Service Developer Guide*.

When the specified KMS key is in the `PendingDeletion` state, this
operation does not change the KMS key's state. Otherwise, it changes the
KMS key's state to `PendingImport`.

After you delete key material, you can use `import_key_material` to
reimport the same key material into the KMS key.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:DeleteImportedKeyMaterial](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(key policy)

**Related operations:**

-   `get_parameters_for_import`

-   `import_key_material`

### Usage

    kms_delete_imported_key_material(KeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kms_delete_imported_key_material_:_KeyId">KeyId</code></td>
<td><p>[required] Identifies the KMS key from which you are deleting
imported key material. The <code>Origin</code> of the KMS key must be
<code>EXTERNAL</code>.</p>
<p>Specify the key ID or key ARN of the KMS key.</p>
<p>For example:</p>
<ul>
<li><p>Key ID: <code
style="white-space: pre;">⁠1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Key ARN: <code
style="white-space: pre;">⁠arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
</ul>
<p>To get the key ID and key ARN for a KMS key, use
<code>list_keys</code> or <code>describe_key</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_imported_key_material(
      KeyId = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes the imported key material from the
    # specified KMS key.
    svc$delete_imported_key_material(
      KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
