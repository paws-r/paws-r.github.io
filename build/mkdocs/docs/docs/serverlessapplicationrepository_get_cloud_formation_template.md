<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_get_cloud_formation_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the specified AWS CloudFormation template

### Description

Gets the specified AWS CloudFormation template.

### Usage

    serverlessapplicationrepository_get_cloud_formation_template(
      ApplicationId, TemplateId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_get_cloud_formation_template_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_get_cloud_formation_template_:_TemplateId">TemplateId</code></td>
<td><p>[required] The UUID returned by CreateCloudFormationTemplate.</p>
<p>Pattern:
[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationId = "string",
      CreationTime = "string",
      ExpirationTime = "string",
      SemanticVersion = "string",
      Status = "PREPARING"|"ACTIVE"|"EXPIRED",
      TemplateId = "string",
      TemplateUrl = "string"
    )

### Request syntax

    svc$get_cloud_formation_template(
      ApplicationId = "string",
      TemplateId = "string"
    )
