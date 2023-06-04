<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_update_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified application

### Description

Updates the specified application.

### Usage

    serverlessapplicationrepository_update_application(ApplicationId,
      Author, Description, HomePageUrl, Labels, ReadmeBody, ReadmeUrl)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_update_application_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_update_application_:_Author">Author</code></td>
<td><p>The name of the author publishing the app.</p>
<p>Minimum length=1. Maximum length=127.</p>
<p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_update_application_:_Description">Description</code></td>
<td><p>The description of the application.</p>
<p>Minimum length=1. Maximum length=256</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_update_application_:_HomePageUrl">HomePageUrl</code></td>
<td><p>A URL with more information about the application, for example
the location of your GitHub repository for the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_update_application_:_Labels">Labels</code></td>
<td><p>Labels to improve discovery of apps in search results.</p>
<p>Minimum length=1. Maximum length=127. Maximum number of labels:
10</p>
<p>Pattern: "^[a-zA-Z0-9+\-_:\/@]+$";</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_update_application_:_ReadmeBody">ReadmeBody</code></td>
<td><p>A text readme file in Markdown language that contains a more
detailed description of the application and how it works.</p>
<p>Maximum size 5 MB</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_update_application_:_ReadmeUrl">ReadmeUrl</code></td>
<td><p>A link to the readme file in Markdown language that contains a
more detailed description of the application and how it works.</p>
<p>Maximum size 5 MB</p></td>
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

    svc$update_application(
      ApplicationId = "string",
      Author = "string",
      Description = "string",
      HomePageUrl = "string",
      Labels = list(
        "string"
      ),
      ReadmeBody = "string",
      ReadmeUrl = "string"
    )
