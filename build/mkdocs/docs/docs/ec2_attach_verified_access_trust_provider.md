<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_attach_verified_access_trust_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches the specified Amazon Web Services Verified Access trust provider to the specified Amazon Web Services Verified Access instance

### Description

Attaches the specified Amazon Web Services Verified Access trust
provider to the specified Amazon Web Services Verified Access instance.

### Usage

    ec2_attach_verified_access_trust_provider(VerifiedAccessInstanceId,
      VerifiedAccessTrustProviderId, ClientToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_attach_verified_access_trust_provider_:_VerifiedAccessInstanceId">VerifiedAccessInstanceId</code></td>
<td><p>[required] The ID of the Verified Access instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_attach_verified_access_trust_provider_:_VerifiedAccessTrustProviderId">VerifiedAccessTrustProviderId</code></td>
<td><p>[required] The ID of the Verified Access trust provider.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_attach_verified_access_trust_provider_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure
idempotency of your modification request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_attach_verified_access_trust_provider_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VerifiedAccessTrustProvider = list(
        VerifiedAccessTrustProviderId = "string",
        Description = "string",
        TrustProviderType = "user"|"device",
        UserTrustProviderType = "iam-identity-center"|"oidc",
        DeviceTrustProviderType = "jamf"|"crowdstrike",
        OidcOptions = list(
          Issuer = "string",
          AuthorizationEndpoint = "string",
          TokenEndpoint = "string",
          UserInfoEndpoint = "string",
          ClientId = "string",
          ClientSecret = "string",
          Scope = "string"
        ),
        DeviceOptions = list(
          TenantId = "string"
        ),
        PolicyReferenceName = "string",
        CreationTime = "string",
        LastUpdatedTime = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      VerifiedAccessInstance = list(
        VerifiedAccessInstanceId = "string",
        Description = "string",
        VerifiedAccessTrustProviders = list(
          list(
            VerifiedAccessTrustProviderId = "string",
            Description = "string",
            TrustProviderType = "user"|"device",
            UserTrustProviderType = "iam-identity-center"|"oidc",
            DeviceTrustProviderType = "jamf"|"crowdstrike"
          )
        ),
        CreationTime = "string",
        LastUpdatedTime = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$attach_verified_access_trust_provider(
      VerifiedAccessInstanceId = "string",
      VerifiedAccessTrustProviderId = "string",
      ClientToken = "string",
      DryRun = TRUE|FALSE
    )
