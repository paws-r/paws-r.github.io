<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_continuous_deployment_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a continuous deployment policy that distributes traffic for a custom domain name to two different CloudFront distributions

### Description

Creates a continuous deployment policy that distributes traffic for a
custom domain name to two different CloudFront distributions.

To use a continuous deployment policy, first use `copy_distribution` to
create a staging distribution, then use `update_distribution` to modify
the staging distribution's configuration.

After you create and update a staging distribution, you can use a
continuous deployment policy to incrementally move traffic to the
staging distribution. This workflow enables you to test changes to a
distribution's configuration before moving all of your domain's
production traffic to the new configuration.

### Usage

    cloudfront_create_continuous_deployment_policy(
      ContinuousDeploymentPolicyConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_continuous_deployment_policy_:_ContinuousDeploymentPolicyConfig">ContinuousDeploymentPolicyConfig</code></td>
<td><p>[required] Contains the configuration for a continuous deployment
policy.</p></td>
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
      Location = "string",
      ETag = "string"
    )

### Request syntax

    svc$create_continuous_deployment_policy(
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
    )
