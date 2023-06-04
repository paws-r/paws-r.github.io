<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_create_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an App Runner connection resource

### Description

Create an App Runner connection resource. App Runner requires a
connection resource when you create App Runner services that access
private repositories from certain third-party providers. You can share a
connection across multiple services.

A connection resource is needed to access GitHub repositories. GitHub
requires a user interface approval process through the App Runner
console before you can use the connection.

### Usage

    apprunner_create_connection(ConnectionName, ProviderType, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_create_connection_:_ConnectionName">ConnectionName</code></td>
<td><p>[required] A name for the new connection. It must be unique
across all App Runner connections for the Amazon Web Services account in
the Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_create_connection_:_ProviderType">ProviderType</code></td>
<td><p>[required] The source repository provider.</p></td>
</tr>
<tr class="odd">
<td><code id="apprunner_create_connection_:_Tags">Tags</code></td>
<td><p>A list of metadata items that you can associate with your
connection resource. A tag is a key-value pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Connection = list(
        ConnectionName = "string",
        ConnectionArn = "string",
        ProviderType = "GITHUB",
        Status = "PENDING_HANDSHAKE"|"AVAILABLE"|"ERROR"|"DELETED",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_connection(
      ConnectionName = "string",
      ProviderType = "GITHUB",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
