<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_delete_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified alias

### Description

Deletes the specified alias.

Adding, deleting, or updating an alias can allow or deny permission to
the KMS key. For details, see [ABAC for
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the *Key Management Service Developer Guide*.

Because an alias is not a property of a KMS key, you can delete and
change the aliases of a KMS key without affecting the KMS key. Also,
aliases do not appear in the response from the `describe_key` operation.
To get the aliases of all KMS keys, use the `list_aliases` operation.

Each KMS key can have multiple aliases. To change the alias of a KMS
key, use `delete_alias` to delete the current alias and `create_alias`
to create a new alias. To associate an existing alias with a different
KMS key, call `update_alias`.

**Cross-account use**: No. You cannot perform this operation on an alias
in a different Amazon Web Services account.

**Required permissions**

-   [kms:DeleteAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
    on the alias (IAM policy).

-   [kms:DeleteAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
    on the KMS key (key policy).

For details, see [Controlling access to
aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access)
in the *Key Management Service Developer Guide*.

**Related operations:**

-   `create_alias`

-   `list_aliases`

-   `update_alias`

### Usage

    kms_delete_alias(AliasName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_delete_alias_:_AliasName">AliasName</code></td>
<td><p>[required] The alias to be deleted. The alias name must begin
with <code style="white-space: pre;">⁠alias/⁠</code> followed by the alias
name, such as <code>alias/ExampleAlias</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_alias(
      AliasName = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes the specified alias.
    svc$delete_alias(
      AliasName = "alias/ExampleAlias"
    )

    ## End(Not run)
