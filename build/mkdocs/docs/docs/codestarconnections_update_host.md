<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarconnections_update_host</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a specified host with the provided configurations

### Description

Updates a specified host with the provided configurations.

### Usage

    codestarconnections_update_host(HostArn, ProviderEndpoint,
      VpcConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarconnections_update_host_:_HostArn">HostArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the host to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarconnections_update_host_:_ProviderEndpoint">ProviderEndpoint</code></td>
<td><p>The URL or endpoint of the host to be updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarconnections_update_host_:_VpcConfiguration">VpcConfiguration</code></td>
<td><p>The VPC configuration of the host to be updated. A VPC must be
configured and the infrastructure to be represented by the host must
already be connected to the VPC.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_host(
      HostArn = "string",
      ProviderEndpoint = "string",
      VpcConfiguration = list(
        VpcId = "string",
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        ),
        TlsCertificate = "string"
      )
    )
