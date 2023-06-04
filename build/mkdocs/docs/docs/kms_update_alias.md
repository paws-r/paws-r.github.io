<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_update_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an existing KMS alias with a different KMS key

### Description

Associates an existing KMS alias with a different KMS key. Each alias is
associated with only one KMS key at a time, although a KMS key can have
multiple aliases. The alias and the KMS key must be in the same Amazon
Web Services account and Region.

Adding, deleting, or updating an alias can allow or deny permission to
the KMS key. For details, see [ABAC for
KMS](https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the *Key Management Service Developer Guide*.

The current and new KMS key must be the same type (both symmetric or
both asymmetric or both HMAC), and they must have the same key usage.
This restriction prevents errors in code that uses aliases. If you must
assign an alias to a different type of KMS key, use `delete_alias` to
delete the old alias and `create_alias` to create a new alias.

You cannot use `update_alias` to change an alias name. To change an
alias name, use `delete_alias` to delete the old alias and
`create_alias` to create a new alias.

Because an alias is not a property of a KMS key, you can create, update,
and delete the aliases of a KMS key without affecting the KMS key. Also,
aliases do not appear in the response from the `describe_key` operation.
To get the aliases of all KMS keys in the account, use the
`list_aliases` operation.

The KMS key that you use for this operation must be in a compatible key
state. For details, see [Key states of KMS
keys](https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the *Key Management Service Developer Guide*.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**

-   [kms:UpdateAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
    on the alias (IAM policy).

-   [kms:UpdateAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
    on the current KMS key (key policy).

-   [kms:UpdateAlias](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
    on the new KMS key (key policy).

For details, see [Controlling access to
aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access)
in the *Key Management Service Developer Guide*.

**Related operations:**

-   `create_alias`

-   `delete_alias`

-   `list_aliases`

### Usage

    kms_update_alias(AliasName, TargetKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_update_alias_:_AliasName">AliasName</code></td>
<td><p>[required] Identifies the alias that is changing its KMS key.
This value must begin with <code style="white-space: pre;">⁠alias/⁠</code>
followed by the alias name, such as <code>alias/ExampleAlias</code>. You
cannot use <code>update_alias</code> to change the alias name.</p>
<p>Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.</p></td>
</tr>
<tr class="even">
<td><code id="kms_update_alias_:_TargetKeyId">TargetKeyId</code></td>
<td><p>[required] Identifies the <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer
managed key</a> to associate with the alias. You don't have permission
to associate an alias with an <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon
Web Services managed key</a>.</p>
<p>The KMS key must be in the same Amazon Web Services account and
Region as the alias. Also, the new target KMS key must be the same type
as the current target KMS key (both symmetric or both asymmetric or both
HMAC) and they must have the same key usage.</p>
<p>Specify the key ID or key ARN of the KMS key.</p>
<p>For example:</p>
<ul>
<li><p>Key ID: <code
style="white-space: pre;">⁠1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Key ARN: <code
style="white-space: pre;">⁠arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
</ul>
<p>To get the key ID and key ARN for a KMS key, use
<code>list_keys</code> or <code>describe_key</code>.</p>
<p>To verify that the alias is mapped to the correct KMS key, use
<code>list_aliases</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_alias(
      AliasName = "string",
      TargetKeyId = "string"
    )

### Examples

    ## Not run: 
    # The following example updates the specified alias to refer to the
    # specified KMS key.
    svc$update_alias(
      AliasName = "alias/ExampleAlias",
      TargetKeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
    )

    ## End(Not run)
