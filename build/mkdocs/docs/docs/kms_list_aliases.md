<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_list_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of aliases in the caller's Amazon Web Services account and region

### Description

Gets a list of aliases in the caller's Amazon Web Services account and
region. For more information about aliases, see `create_alias`.

By default, the `list_aliases` operation returns all aliases in the
account and region. To get only the aliases associated with a particular
KMS key, use the `KeyId` parameter.

The `list_aliases` response can include aliases that you created and
associated with your customer managed keys, and aliases that Amazon Web
Services created and associated with Amazon Web Services managed keys in
your account. You can recognize Amazon Web Services aliases because
their names have the format `⁠aws/<service-name>⁠`, such as
`aws/dynamodb`.

The response might also include aliases that have no `TargetKeyId`
field. These are predefined aliases that Amazon Web Services has created
but has not yet associated with a KMS key. Aliases that Amazon Web
Services creates in your account, including predefined aliases, do not
count against your [KMS aliases
quota](https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit).

**Cross-account use**: No. `list_aliases` does not return aliases in
other Amazon Web Services accounts.

**Required permissions**:
[kms:ListAliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

For details, see [Controlling access to
aliases](https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access)
in the *Key Management Service Developer Guide*.

**Related operations:**

-   `create_alias`

-   `delete_alias`

-   `update_alias`

### Usage

    kms_list_aliases(KeyId, Limit, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_list_aliases_:_KeyId">KeyId</code></td>
<td><p>Lists only aliases that are associated with the specified KMS
key. Enter a KMS key in your Amazon Web Services account.</p>
<p>This parameter is optional. If you omit it, <code>list_aliases</code>
returns all aliases in the account and Region.</p>
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
<tr class="even">
<td><code id="kms_list_aliases_:_Limit">Limit</code></td>
<td><p>Use this parameter to specify the maximum number of items to
return. When this value is present, KMS does not return more than the
specified number of items, but it might return fewer.</p>
<p>This value is optional. If you include a value, it must be between 1
and 100, inclusive. If you do not include a value, it defaults to
50.</p></td>
</tr>
<tr class="odd">
<td><code id="kms_list_aliases_:_Marker">Marker</code></td>
<td><p>Use this parameter in a subsequent request after you receive a
response with truncated results. Set it to the value of
<code>NextMarker</code> from the truncated response you just
received.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Aliases = list(
        list(
          AliasName = "string",
          AliasArn = "string",
          TargetKeyId = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextMarker = "string",
      Truncated = TRUE|FALSE
    )

### Request syntax

    svc$list_aliases(
      KeyId = "string",
      Limit = 123,
      Marker = "string"
    )

### Examples

    ## Not run: 
    # The following example lists aliases.
    svc$list_aliases()

    ## End(Not run)
