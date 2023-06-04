<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_get_portal</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the web portal

### Description

Gets the web portal.

### Usage

    workspacesweb_get_portal(portalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_get_portal_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      portal = list(
        authenticationType = "Standard"|"IAM_Identity_Center",
        browserSettingsArn = "string",
        browserType = "Chrome",
        creationDate = as.POSIXct(
          "2015-01-01"
        ),
        displayName = "string",
        networkSettingsArn = "string",
        portalArn = "string",
        portalEndpoint = "string",
        portalStatus = "Incomplete"|"Pending"|"Active",
        rendererType = "AppStream",
        statusReason = "string",
        trustStoreArn = "string",
        userAccessLoggingSettingsArn = "string",
        userSettingsArn = "string"
      )
    )

### Request syntax

    svc$get_portal(
      portalArn = "string"
    )
