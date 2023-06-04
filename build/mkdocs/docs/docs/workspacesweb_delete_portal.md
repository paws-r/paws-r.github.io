<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_delete_portal</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a web portal

### Description

Deletes a web portal.

### Usage

    workspacesweb_delete_portal(portalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_delete_portal_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_portal(
      portalArn = "string"
    )
