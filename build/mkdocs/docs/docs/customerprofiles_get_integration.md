<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_get_integration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an integration for a domain

### Description

Returns an integration for a domain.

### Usage

    customerprofiles_get_integration(DomainName, Uri)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_get_integration_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code id="customerprofiles_get_integration_:_Uri">Uri</code></td>
<td><p>[required] The URI of the S3 bucket or any other type of data
source.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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

### Request syntax

    svc$get_integration(
      DomainName = "string",
      Uri = "string"
    )
