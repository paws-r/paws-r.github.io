<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_disassociate_user_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates user settings from a web portal

### Description

Disassociates user settings from a web portal.

### Usage

    workspacesweb_disassociate_user_settings(portalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_disassociate_user_settings_:_portalArn">portalArn</code></td>
<td><p>[required] The ARN of the web portal.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_user_settings(
      portalArn = "string"
    )
