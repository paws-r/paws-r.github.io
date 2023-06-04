<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_verified_access_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Amazon Web Services Verified Access instances

### Description

Describes the specified Amazon Web Services Verified Access instances.

### Usage

    ec2_describe_verified_access_instances(VerifiedAccessInstanceIds,
      MaxResults, NextToken, Filters, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_verified_access_instances_:_VerifiedAccessInstanceIds">VerifiedAccessInstanceIds</code></td>
<td><p>The IDs of the Verified Access instances.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_verified_access_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_verified_access_instances_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_verified_access_instances_:_Filters">Filters</code></td>
<td><p>One or more filters. Filter names and values are
case-sensitive.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_verified_access_instances_:_DryRun">DryRun</code></td>
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
      VerifiedAccessInstances = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_verified_access_instances(
      VerifiedAccessInstanceIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE
    )
