<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_associate_website_authorization_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a website authorization provider with a specified fleet

### Description

Associates a website authorization provider with a specified fleet. This
is used to authorize users against associated websites in the company
network.

### Usage

    worklink_associate_website_authorization_provider(FleetArn,
      AuthorizationProviderType, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_associate_website_authorization_provider_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_associate_website_authorization_provider_:_AuthorizationProviderType">AuthorizationProviderType</code></td>
<td><p>[required] The authorization provider type.</p></td>
</tr>
<tr class="odd">
<td><code
id="worklink_associate_website_authorization_provider_:_DomainName">DomainName</code></td>
<td><p>The domain name of the authorization provider. This applies only
to SAML-based authorization providers.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthorizationProviderId = "string"
    )

### Request syntax

    svc$associate_website_authorization_provider(
      FleetArn = "string",
      AuthorizationProviderType = "SAML",
      DomainName = "string"
    )
