<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarconnections_create_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a connection that can then be given to other AWS services like CodePipeline so that it can access third-party code repositories

### Description

Creates a connection that can then be given to other AWS services like
CodePipeline so that it can access third-party code repositories. The
connection is in pending status until the third-party connection
handshake is completed from the console.

### Usage

    codestarconnections_create_connection(ProviderType, ConnectionName,
      Tags, HostArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarconnections_create_connection_:_ProviderType">ProviderType</code></td>
<td><p>The name of the external provider where your third-party code
repository is configured.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarconnections_create_connection_:_ConnectionName">ConnectionName</code></td>
<td><p>[required] The name of the connection to be created. The name
must be unique in the calling AWS account.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarconnections_create_connection_:_Tags">Tags</code></td>
<td><p>The key-value pair to use when tagging the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarconnections_create_connection_:_HostArn">HostArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the host associated with the
connection to be created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectionArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$create_connection(
      ProviderType = "Bitbucket"|"GitHub"|"GitHubEnterpriseServer",
      ConnectionName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      HostArn = "string"
    )
