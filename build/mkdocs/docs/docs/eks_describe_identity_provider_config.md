<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_describe_identity_provider_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns descriptive information about an identity provider configuration

### Description

Returns descriptive information about an identity provider
configuration.

### Usage

    eks_describe_identity_provider_config(clusterName,
      identityProviderConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_describe_identity_provider_config_:_clusterName">clusterName</code></td>
<td><p>[required] The cluster name that the identity provider
configuration is associated to.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_describe_identity_provider_config_:_identityProviderConfig">identityProviderConfig</code></td>
<td><p>[required] An object representing an identity provider
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      identityProviderConfig = list(
        oidc = list(
          identityProviderConfigName = "string",
          identityProviderConfigArn = "string",
          clusterName = "string",
          issuerUrl = "string",
          clientId = "string",
          usernameClaim = "string",
          usernamePrefix = "string",
          groupsClaim = "string",
          groupsPrefix = "string",
          requiredClaims = list(
            "string"
          ),
          tags = list(
            "string"
          ),
          status = "CREATING"|"DELETING"|"ACTIVE"
        )
      )
    )

### Request syntax

    svc$describe_identity_provider_config(
      clusterName = "string",
      identityProviderConfig = list(
        type = "string",
        name = "string"
      )
    )
