<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_list_website_certificate_authorities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of certificate authorities added for the current account and Region

### Description

Retrieves a list of certificate authorities added for the current
account and Region.

### Usage

    worklink_list_website_certificate_authorities(FleetArn, MaxResults,
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
id="worklink_list_website_certificate_authorities_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_list_website_certificate_authorities_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be included in the next
page.</p></td>
</tr>
<tr class="odd">
<td><code
id="worklink_list_website_certificate_authorities_:_NextToken">NextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WebsiteCertificateAuthorities = list(
        list(
          WebsiteCaId = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          DisplayName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_website_certificate_authorities(
      FleetArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
