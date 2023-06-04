<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_describe_identity_provider_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the identity provider configuration of the specified fleet

### Description

Describes the identity provider configuration of the specified fleet.

### Usage

    worklink_describe_identity_provider_configuration(FleetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_describe_identity_provider_configuration_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityProviderType = "SAML",
      ServiceProviderSamlMetadata = "string",
      IdentityProviderSamlMetadata = "string"
    )

### Request syntax

    svc$describe_identity_provider_configuration(
      FleetArn = "string"
    )
