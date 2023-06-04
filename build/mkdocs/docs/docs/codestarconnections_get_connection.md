<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarconnections_get_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the connection ARN and details such as status, owner, and provider type

### Description

Returns the connection ARN and details such as status, owner, and
provider type.

### Usage

    codestarconnections_get_connection(ConnectionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarconnections_get_connection_:_ConnectionArn">ConnectionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of a
connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Connection = list(
        ConnectionName = "string",
        ConnectionArn = "string",
        ProviderType = "Bitbucket"|"GitHub"|"GitHubEnterpriseServer",
        OwnerAccountId = "string",
        ConnectionStatus = "PENDING"|"AVAILABLE"|"ERROR",
        HostArn = "string"
      )
    )

### Request syntax

    svc$get_connection(
      ConnectionArn = "string"
    )
