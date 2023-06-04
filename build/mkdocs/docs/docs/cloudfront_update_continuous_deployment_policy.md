<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_continuous_deployment_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a continuous deployment policy

### Description

Updates a continuous deployment policy. You can update a continuous
deployment policy to enable or disable it, to change the percentage of
traffic that it sends to the staging distribution, or to change the
staging distribution that it sends traffic to.

When you update a continuous deployment policy configuration, all the
fields are updated with the values that are provided in the request. You
cannot update some fields independent of others. To update a continuous
deployment policy configuration:

1.  Use `get_continuous_deployment_policy_config` to get the current
    configuration.

2.  Locally modify the fields in the continuous deployment policy
    configuration that you want to update.

3.  Use `update_continuous_deployment_policy`, providing the entire
    continuous deployment policy configuration, including the fields
    that you modified and those that you didn't.

### Usage

    cloudfront_update_continuous_deployment_policy(
      ContinuousDeploymentPolicyConfig, Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_continuous_deployment_policy_:_ContinuousDeploymentPolicyConfig">ContinuousDeploymentPolicyConfig</code></td>
<td><p>[required] The continuous deployment policy
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_update_continuous_deployment_policy_:_Id">Id</code></td>
<td><p>[required] The identifier of the continuous deployment policy
that you are updating.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_continuous_deployment_policy_:_IfMatch">IfMatch</code></td>
<td><p>The current version (<code>ETag</code> value) of the continuous
deployment policy that you are updating.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContinuousDeploymentPolicy = list(
        Id = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        ContinuousDeploymentPolicyConfig = list(
          StagingDistributionDnsNames = list(
            Quantity = 123,
            Items = list(
              "string"
            )
          ),
          Enabled = TRUE|FALSE,
          TrafficConfig = list(
            SingleWeightConfig = list(
              Weight = 123.0,
              SessionStickinessConfig = list(
                IdleTTL = 123,
                MaximumTTL = 123
              )
            ),
            SingleHeaderConfig = list(
              Header = "string",
              Value = "string"
            ),
            Type = "SingleWeight"|"SingleHeader"
          )
        )
      ),
      ETag = "string"
    )

### Request syntax

    svc$update_continuous_deployment_policy(
      ContinuousDeploymentPolicyConfig = list(
        StagingDistributionDnsNames = list(
          Quantity = 123,
          Items = list(
            "string"
          )
        ),
        Enabled = TRUE|FALSE,
        TrafficConfig = list(
          SingleWeightConfig = list(
            Weight = 123.0,
            SessionStickinessConfig = list(
              IdleTTL = 123,
              MaximumTTL = 123
            )
          ),
          SingleHeaderConfig = list(
            Header = "string",
            Value = "string"
          ),
          Type = "SingleWeight"|"SingleHeader"
        )
      ),
      Id = "string",
      IfMatch = "string"
    )
