<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarconnections_create_host</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a resource that represents the infrastructure where a third-party provider is installed

### Description

Creates a resource that represents the infrastructure where a
third-party provider is installed. The host is used when you create
connections to an installed third-party provider type, such as GitHub
Enterprise Server. You create one host for all connections to that
provider.

A host created through the CLI or the SDK is in \verbPENDING\\ status by
default. You can make its status \verbAVAILABLE\\ by setting up the host
in the console.

### Usage

    codestarconnections_create_host(Name, ProviderType, ProviderEndpoint,
      VpcConfiguration, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestarconnections_create_host_:_Name">Name</code></td>
<td><p>[required] The name of the host to be created. The name must be
unique in the calling AWS account.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarconnections_create_host_:_ProviderType">ProviderType</code></td>
<td><p>[required] The name of the installed provider to be associated
with your connection. The host resource represents the infrastructure
where your provider type is installed. The valid provider type is GitHub
Enterprise Server.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarconnections_create_host_:_ProviderEndpoint">ProviderEndpoint</code></td>
<td><p>[required] The endpoint of the infrastructure to be represented
by the host after it is created.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarconnections_create_host_:_VpcConfiguration">VpcConfiguration</code></td>
<td><p>The VPC configuration to be provisioned for the host. A VPC must
be configured and the infrastructure to be represented by the host must
already be connected to the VPC.</p></td>
</tr>
<tr class="odd">
<td><code id="codestarconnections_create_host_:_Tags">Tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HostArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$create_host(
      Name = "string",
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
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
