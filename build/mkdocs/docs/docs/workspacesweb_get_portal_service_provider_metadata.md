<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_get_portal_service_provider_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the service provider metadata

### Description

Gets the service provider metadata.

### Usage

    workspacesweb_get_portal_service_provider_metadata(portalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_get_portal_service_provider_metadata_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      portalArn = "string",
      serviceProviderSamlMetadata = "string"
    )

### Request syntax

    svc$get_portal_service_provider_metadata(
      portalArn = "string"
    )
