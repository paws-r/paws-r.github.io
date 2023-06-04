<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_list_account_integrations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the integrations associated to a specific URI in the AWS account

### Description

Lists all of the integrations associated to a specific URI in the AWS
account.

### Usage

    customerprofiles_list_account_integrations(Uri, NextToken, MaxResults,
      IncludeHidden)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_list_account_integrations_:_Uri">Uri</code></td>
<td><p>[required] The URI of the S3 bucket or any other type of data
source.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_account_integrations_:_NextToken">NextToken</code></td>
<td><p>The pagination token from the previous ListAccountIntegrations
API call.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_list_account_integrations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects returned per page.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_account_integrations_:_IncludeHidden">IncludeHidden</code></td>
<td><p>Boolean to indicate if hidden integration should be returned.
Defaults to <code>False</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          DomainName = "string",
          Uri = "string",
          ObjectTypeName = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            "string"
          ),
          ObjectTypeNames = list(
            "string"
          ),
          WorkflowId = "string",
          IsUnstructured = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_account_integrations(
      Uri = "string",
      NextToken = "string",
      MaxResults = 123,
      IncludeHidden = TRUE|FALSE
    )
