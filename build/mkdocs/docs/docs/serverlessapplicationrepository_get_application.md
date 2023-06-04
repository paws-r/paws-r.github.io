<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_get_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the specified application

### Description

Gets the specified application.

### Usage

    serverlessapplicationrepository_get_application(ApplicationId,
      SemanticVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_get_application_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_get_application_:_SemanticVersion">SemanticVersion</code></td>
<td><p>The semantic version of the application to get.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationId = "string",
      Author = "string",
      CreationTime = "string",
      Description = "string",
      HomePageUrl = "string",
      IsVerifiedAuthor = TRUE|FALSE,
      Labels = list(
        "string"
      ),
      LicenseUrl = "string",
      Name = "string",
      ReadmeUrl = "string",
      SpdxLicenseId = "string",
      VerifiedAuthorUrl = "string",
      Version = list(
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
    )

### Request syntax

    svc$get_application(
      ApplicationId = "string",
      SemanticVersion = "string"
    )
