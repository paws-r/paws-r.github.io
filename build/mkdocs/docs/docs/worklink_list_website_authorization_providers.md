<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_list_website_authorization_providers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of website authorization providers associated with a specified fleet

### Description

Retrieves a list of website authorization providers associated with a
specified fleet.

### Usage

    worklink_list_website_authorization_providers(FleetArn, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_list_website_authorization_providers_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_list_website_authorization_providers_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
<tr class="odd">
<td><code
id="worklink_list_website_authorization_providers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be included in the next
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WebsiteAuthorizationProviders = list(
        list(
          AuthorizationProviderId = "string",
          AuthorizationProviderType = "SAML",
          DomainName = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_website_authorization_providers(
      FleetArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
