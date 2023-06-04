<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_create_application_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an application version

### Description

Creates an application version.

### Usage

    serverlessapplicationrepository_create_application_version(
      ApplicationId, SemanticVersion, SourceCodeArchiveUrl, SourceCodeUrl,
      TemplateBody, TemplateUrl)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_application_version_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_application_version_:_SemanticVersion">SemanticVersion</code></td>
<td><p>[required] The semantic version of the new version.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_application_version_:_SourceCodeArchiveUrl">SourceCodeArchiveUrl</code></td>
<td><p>A link to the S3 object that contains the ZIP archive of the
source code for this version of your application.</p>
<p>Maximum size 50 MB</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_application_version_:_SourceCodeUrl">SourceCodeUrl</code></td>
<td><p>A link to a public repository for the source code of your
application, for example the URL of a specific GitHub commit.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_application_version_:_TemplateBody">TemplateBody</code></td>
<td><p>The raw packaged AWS SAM template of your application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_application_version_:_TemplateUrl">TemplateUrl</code></td>
<td><p>A link to the packaged AWS SAM template of your
application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationId = "string",
      CreationTime = "string",
      ParameterDefinitions = list(
        list(
          AllowedPattern = "string",
          AllowedValues = list(
            "string"
          ),
          ConstraintDescription = "string",
          DefaultValue = "string",
          Description = "string",
          MaxLength = 123,
          MaxValue = 123,
          MinLength = 123,
          MinValue = 123,
          Name = "string",
          NoEcho = TRUE|FALSE,
          ReferencedByResources = list(
            "string"
          ),
          Type = "string"
        )
      ),
      RequiredCapabilities = list(
        "CAPABILITY_IAM"|"CAPABILITY_NAMED_IAM"|"CAPABILITY_AUTO_EXPAND"|"CAPABILITY_RESOURCE_POLICY"
      ),
      ResourcesSupported = TRUE|FALSE,
      SemanticVersion = "string",
      SourceCodeArchiveUrl = "string",
      SourceCodeUrl = "string",
      TemplateUrl = "string"
    )

### Request syntax

    svc$create_application_version(
      ApplicationId = "string",
      SemanticVersion = "string",
      SourceCodeArchiveUrl = "string",
      SourceCodeUrl = "string",
      TemplateBody = "string",
      TemplateUrl = "string"
    )
