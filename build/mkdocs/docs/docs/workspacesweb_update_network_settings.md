<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_update_network_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates network settings

### Description

Updates network settings.

### Usage

    workspacesweb_update_network_settings(clientToken, networkSettingsArn,
      securityGroupIds, subnetIds, vpcId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_update_network_settings_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, subsequent retries with the same client token
return the result from the original successful request.</p>
<p>If you do not specify a client token, one is automatically generated
by the AWS SDK.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_update_network_settings_:_networkSettingsArn">networkSettingsArn</code></td>
<td><p>[required] The ARN of the network settings.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_update_network_settings_:_securityGroupIds">securityGroupIds</code></td>
<td><p>One or more security groups used to control access from streaming
instances to your VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_update_network_settings_:_subnetIds">subnetIds</code></td>
<td><p>The subnets in which network interfaces are created to connect
streaming instances to your VPC. At least two of these subnets must be
in different availability zones.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_update_network_settings_:_vpcId">vpcId</code></td>
<td><p>The VPC that streaming instances will connect to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      networkSettings = list(
        associatedPortalArns = list(
          "string"
        ),
        networkSettingsArn = "string",
        securityGroupIds = list(
          "string"
        ),
        subnetIds = list(
          "string"
        ),
        vpcId = "string"
      )
    )

### Request syntax

    svc$update_network_settings(
      clientToken = "string",
      networkSettingsArn = "string",
      securityGroupIds = list(
        "string"
      ),
      subnetIds = list(
        "string"
      ),
      vpcId = "string"
    )
