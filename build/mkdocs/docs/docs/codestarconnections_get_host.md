<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarconnections_get_host</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the host ARN and details such as status, provider type, endpoint, and, if applicable, the VPC configuration

### Description

Returns the host ARN and details such as status, provider type,
endpoint, and, if applicable, the VPC configuration.

### Usage

    codestarconnections_get_host(HostArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarconnections_get_host_:_HostArn">HostArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the requested
host.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Status = "string",
      ProviderType = "Bitbucket"|"GitHub"|"GitHubEnterpriseServer",
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

### Request syntax

    svc$get_host(
      HostArn = "string"
    )
