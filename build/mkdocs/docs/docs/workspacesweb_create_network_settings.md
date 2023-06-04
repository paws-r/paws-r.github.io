<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_create_network_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a network settings resource that can be associated with a web portal

### Description

Creates a network settings resource that can be associated with a web
portal. Once associated with a web portal, network settings define how
streaming instances will connect with your specified VPC.

### Usage

    workspacesweb_create_network_settings(clientToken, securityGroupIds,
      subnetIds, tags, vpcId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_create_network_settings_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, subsequent retries with the same client token
returns the result from the original successful request.</p>
<p>If you do not specify a client token, one is automatically generated
by the AWS SDK.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_create_network_settings_:_securityGroupIds">securityGroupIds</code></td>
<td><p>[required] One or more security groups used to control access
from streaming instances to your VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_network_settings_:_subnetIds">subnetIds</code></td>
<td><p>[required] The subnets in which network interfaces are created to
connect streaming instances to your VPC. At least two of these subnets
must be in different availability zones.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_create_network_settings_:_tags">tags</code></td>
<td><p>The tags to add to the network settings resource. A tag is a
key-value pair.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspacesweb_create_network_settings_:_vpcId">vpcId</code></td>
<td><p>[required] The VPC that streaming instances will connect
to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      networkSettingsArn = "string"
    )

### Request syntax

    svc$create_network_settings(
      clientToken = "string",
      securityGroupIds = list(
        "string"
      ),
      subnetIds = list(
        "string"
      ),
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      vpcId = "string"
    )
