<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_verified_access_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an Amazon Web Services Verified Access instance

### Description

Delete an Amazon Web Services Verified Access instance.

### Usage

    ec2_delete_verified_access_instance(VerifiedAccessInstanceId, DryRun,
      ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_verified_access_instance_:_VerifiedAccessInstanceId">VerifiedAccessInstanceId</code></td>
<td><p>[required] The ID of the Verified Access instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_verified_access_instance_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_delete_verified_access_instance_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure
idempotency of your modification request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

    svc$delete_verified_access_instance(
      VerifiedAccessInstanceId = "string",
      DryRun = TRUE|FALSE,
      ClientToken = "string"
    )
