<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_delete_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified identity (an email address or a domain) from the list of verified identities

### Description

Deletes the specified identity (an email address or a domain) from the
list of verified identities.

You can execute this operation no more than once per second.

### Usage

    ses_delete_identity(Identity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_delete_identity_:_Identity">Identity</code></td>
<td><p>[required] The identity to be removed from the list of identities
for the AWS Account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_identity(
      Identity = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes an identity from the list of identities
    # that have been submitted for verification with Amazon SES:
    svc$delete_identity(
      Identity = "user@example.com"
    )

    ## End(Not run)
