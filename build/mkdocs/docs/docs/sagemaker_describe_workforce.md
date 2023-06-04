<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_workforce</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists private workforce information, including workforce name, Amazon Resource Name (ARN), and, if applicable, allowed IP address ranges (CIDRs)

### Description

Lists private workforce information, including workforce name, Amazon
Resource Name (ARN), and, if applicable, allowed IP address ranges
([CIDRs](https://docs.aws.amazon.com/vpc/latest/userguide/how-it-works.html)).
Allowable IP address ranges are the IP addresses that workers can use to
access tasks.

This operation applies only to private workforces.

### Usage

    sagemaker_describe_workforce(WorkforceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_workforce_:_WorkforceName">WorkforceName</code></td>
<td><p>[required] The name of the private workforce whose access you
want to restrict. <code>WorkforceName</code> is automatically set to
<code>default</code> when a workforce is created and cannot be
modified.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Workforce = list(
        WorkforceName = "string",
        WorkforceArn = "string",
        LastUpdatedDate = as.POSIXct(
          "2015-01-01"
        ),
        SourceIpConfig = list(
          Cidrs = list(
            "string"
          )
        ),
        SubDomain = "string",
        CognitoConfig = list(
          UserPool = "string",
          ClientId = "string"
        ),
        OidcConfig = list(
          ClientId = "string",
          Issuer = "string",
          AuthorizationEndpoint = "string",
          TokenEndpoint = "string",
          UserInfoEndpoint = "string",
          LogoutEndpoint = "string",
          JwksUri = "string"
        ),
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        WorkforceVpcConfig = list(
          VpcId = "string",
          SecurityGroupIds = list(
            "string"
          ),
          Subnets = list(
            "string"
          ),
          VpcEndpointId = "string"
        ),
        Status = "Initializing"|"Updating"|"Deleting"|"Failed"|"Active",
        FailureReason = "string"
      )
    )

### Request syntax

    svc$describe_workforce(
      WorkforceName = "string"
    )
