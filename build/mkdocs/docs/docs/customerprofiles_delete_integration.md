<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_delete_integration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an integration from a specific domain

### Description

Removes an integration from a specific domain.

### Usage

    customerprofiles_delete_integration(DomainName, Uri)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_delete_integration_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code id="customerprofiles_delete_integration_:_Uri">Uri</code></td>
<td><p>[required] The URI of the S3 bucket or any other type of data
source.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Message = "string"
    )

### Request syntax

    svc$delete_integration(
      DomainName = "string",
      Uri = "string"
    )
