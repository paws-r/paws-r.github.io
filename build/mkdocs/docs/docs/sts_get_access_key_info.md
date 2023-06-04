<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sts_get_access_key_info</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the account identifier for the specified access key ID

### Description

Returns the account identifier for the specified access key ID.

Access keys consist of two parts: an access key ID (for example,
`AKIAIOSFODNN7EXAMPLE`) and a secret access key (for example,
`wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY`). For more information about
access keys, see [Managing Access Keys for IAM
Users](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html)
in the *IAM User Guide*.

When you pass an access key ID to this operation, it returns the ID of
the Amazon Web Services account to which the keys belong. Access key IDs
beginning with `AKIA` are long-term credentials for an IAM user or the
Amazon Web Services account root user. Access key IDs beginning with
`ASIA` are temporary credentials that are created using STS operations.
If the account in the response belongs to you, you can sign in as the
root user and review your root user access keys. Then, you can pull a
[credentials
report](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html)
to learn which IAM user owns the keys. To learn who requested the
temporary credentials for an `ASIA` access key, view the STS events in
your [CloudTrail
logs](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html)
in the *IAM User Guide*.

This operation does not indicate the state of the access key. The key
might be active, inactive, or deleted. Active keys might not have
permissions to perform an operation. Providing a deleted access key
might return an error that the key doesn't exist.

### Usage

    sts_get_access_key_info(AccessKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sts_get_access_key_info_:_AccessKeyId">AccessKeyId</code></td>
<td><p>[required] The identifier of an access key.</p>
<p>This parameter allows (through its regex pattern) a string of
characters that can consist of any upper- or lowercase letter or
digit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Account = "string"
    )

### Request syntax

    svc$get_access_key_info(
      AccessKeyId = "string"
    )
