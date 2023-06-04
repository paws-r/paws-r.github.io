<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_list_identities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list containing all of the identities (email addresses and domains) for your AWS account in the current AWS Region, regardless of verification status

### Description

Returns a list containing all of the identities (email addresses and
domains) for your AWS account in the current AWS Region, regardless of
verification status.

You can execute this operation no more than once per second.

### Usage

    ses_list_identities(IdentityType, NextToken, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_list_identities_:_IdentityType">IdentityType</code></td>
<td><p>The type of the identities to list. Possible values are
"EmailAddress" and "Domain". If this parameter is omitted, then all
identities will be listed.</p></td>
</tr>
<tr class="even">
<td><code id="ses_list_identities_:_NextToken">NextToken</code></td>
<td><p>The token to use for pagination.</p></td>
</tr>
<tr class="odd">
<td><code id="ses_list_identities_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of identities per page. Possible values are
1-1000 inclusive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Identities = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_identities(
      IdentityType = "EmailAddress"|"Domain",
      NextToken = "string",
      MaxItems = 123
    )

### Examples

    ## Not run: 
    # The following example lists the email address identities that have been
    # submitted for verification with Amazon SES:
    svc$list_identities(
      IdentityType = "EmailAddress",
      MaxItems = 123L,
      NextToken = ""
    )

    ## End(Not run)
