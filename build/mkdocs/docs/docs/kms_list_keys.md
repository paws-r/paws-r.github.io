<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kms_list_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of all KMS keys in the caller's Amazon Web Services account and Region

### Description

Gets a list of all KMS keys in the caller's Amazon Web Services account
and Region.

**Cross-account use**: No. You cannot perform this operation on a KMS
key in a different Amazon Web Services account.

**Required permissions**:
[kms:ListKeys](https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html)
(IAM policy)

**Related operations:**

-   `create_key`

-   `describe_key`

-   `list_aliases`

-   `list_resource_tags`

### Usage

    kms_list_keys(Limit, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kms_list_keys_:_Limit">Limit</code></td>
<td><p>Use this parameter to specify the maximum number of items to
return. When this value is present, KMS does not return more than the
specified number of items, but it might return fewer.</p>
<p>This value is optional. If you include a value, it must be between 1
and 1000, inclusive. If you do not include a value, it defaults to
100.</p></td>
</tr>
<tr class="even">
<td><code id="kms_list_keys_:_Marker">Marker</code></td>
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
      Keys = list(
        list(
          KeyId = "string",
          KeyArn = "string"
        )
      ),
      NextMarker = "string",
      Truncated = TRUE|FALSE
    )

### Request syntax

    svc$list_keys(
      Limit = 123,
      Marker = "string"
    )

### Examples

    ## Not run: 
    # The following example lists KMS keys.
    svc$list_keys()

    ## End(Not run)
