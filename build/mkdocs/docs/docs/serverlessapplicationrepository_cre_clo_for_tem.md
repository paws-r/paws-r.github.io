<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_create_cloud_formation_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an AWS CloudFormation template

### Description

Creates an AWS CloudFormation template.

### Usage

    serverlessapplicationrepository_create_cloud_formation_template(
      ApplicationId, SemanticVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_template_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_template_:_SemanticVersion">SemanticVersion</code></td>
<td><p>The semantic version of the application:</p>
<p><a href="https://semver.org/">https://semver.org/</a></p></td>
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

    svc$create_cloud_formation_template(
      ApplicationId = "string",
      SemanticVersion = "string"
    )
