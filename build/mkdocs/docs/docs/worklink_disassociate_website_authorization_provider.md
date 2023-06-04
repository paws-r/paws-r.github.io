<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_disassociate_website_authorization_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a website authorization provider from a specified fleet

### Description

Disassociates a website authorization provider from a specified fleet.
After the disassociation, users can't load any associated websites that
require this authorization provider.

### Usage

    worklink_disassociate_website_authorization_provider(FleetArn,
      AuthorizationProviderId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_disassociate_website_authorization_provider_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_disassociate_website_authorization_provider_:_AuthorizationProviderId">AuthorizationProviderId</code></td>
<td><p>[required] A unique identifier for the authorization
provider.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_website_authorization_provider(
      FleetArn = "string",
      AuthorizationProviderId = "string"
    )
