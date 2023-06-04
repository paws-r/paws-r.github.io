<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_update_identity_provider_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the identity provider configuration for the fleet

### Description

Updates the identity provider configuration for the fleet.

### Usage

    worklink_update_identity_provider_configuration(FleetArn,
      IdentityProviderType, IdentityProviderSamlMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_update_identity_provider_configuration_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_update_identity_provider_configuration_:_IdentityProviderType">IdentityProviderType</code></td>
<td><p>[required] The type of identity provider.</p></td>
</tr>
<tr class="odd">
<td><code
id="worklink_update_identity_provider_configuration_:_IdentityProviderSamlMetadata">IdentityProviderSamlMetadata</code></td>
<td><p>The SAML metadata document provided by the customer’s identity
provider. The existing IdentityProviderSamlMetadata is unset if null is
passed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_identity_provider_configuration(
      FleetArn = "string",
      IdentityProviderType = "SAML",
      IdentityProviderSamlMetadata = "string"
    )
