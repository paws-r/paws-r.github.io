<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_update_template_active_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the status of a specific version of a message template to active

### Description

Changes the status of a specific version of a message template to
*active*.

### Usage

    pinpoint_update_template_active_version(TemplateActiveVersionRequest,
      TemplateName, TemplateType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_update_template_active_version_:_TemplateActiveVersionRequest">TemplateActiveVersionRequest</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_update_template_active_version_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the message template. A template name must
start with an alphanumeric character and can contain a maximum of 128
characters. The characters can be alphanumeric characters, underscores
(_), or hyphens (-). Template names are case sensitive.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpoint_update_template_active_version_:_TemplateType">TemplateType</code></td>
<td><p>[required] The type of channel that the message template is
designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MessageBody = list(
        Message = "string",
        RequestID = "string"
      )
    )

### Request syntax

    svc$update_template_active_version(
      TemplateActiveVersionRequest = list(
        Version = "string"
      ),
      TemplateName = "string",
      TemplateType = "string"
    )
