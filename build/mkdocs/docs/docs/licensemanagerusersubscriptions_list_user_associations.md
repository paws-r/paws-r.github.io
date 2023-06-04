<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions_list_user_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists user associations for an identity provider

### Description

Lists user associations for an identity provider.

### Usage

    licensemanagerusersubscriptions_list_user_associations(Filters,
      IdentityProvider, InstanceId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_list_user_associations_:_Filters">Filters</code></td>
<td><p>An array of structures that you can use to filter the results to
those that match one or more sets of key-value pairs that you
specify.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_list_user_associations_:_IdentityProvider">IdentityProvider</code></td>
<td><p>[required] An object that specifies details for the identity
provider.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_list_user_associations_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the EC2 instance, which provides user-based
subscriptions.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_list_user_associations_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_list_user_associations_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceUserSummaries = list(
        list(
          AssociationDate = "string",
          DisassociationDate = "string",
          Domain = "string",
          IdentityProvider = list(
            ActiveDirectoryIdentityProvider = list(
              DirectoryId = "string"
            )
          ),
          InstanceId = "string",
          Status = "string",
          StatusMessage = "string",
          Username = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_user_associations(
      Filters = list(
        list(
          Attribute = "string",
          Operation = "string",
          Value = "string"
        )
      ),
      IdentityProvider = list(
        ActiveDirectoryIdentityProvider = list(
          DirectoryId = "string"
        )
      ),
      InstanceId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
