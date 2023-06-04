<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions_list_identity_providers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the identity providers for user-based subscriptions

### Description

Lists the identity providers for user-based subscriptions.

### Usage

    licensemanagerusersubscriptions_list_identity_providers(MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_list_identity_providers_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_list_identity_providers_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityProviderSummaries = list(
        list(
          FailureMessage = "string",
          IdentityProvider = list(
            ActiveDirectoryIdentityProvider = list(
              DirectoryId = "string"
            )
          ),
          Product = "string",
          Settings = list(
            SecurityGroupId = "string",
            Subnets = list(
              "string"
            )
          ),
          Status = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_identity_providers(
      MaxResults = 123,
      NextToken = "string"
    )
