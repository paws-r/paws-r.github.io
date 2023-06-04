<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_create_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an application, optionally including an AWS SAM file to create the first application version in the same call

### Description

Creates an application, optionally including an AWS SAM file to create
the first application version in the same call.

### Usage

    serverlessapplicationrepository_create_application(Author, Description,
      HomePageUrl, Labels, LicenseBody, LicenseUrl, Name, ReadmeBody,
      ReadmeUrl, SemanticVersion, SourceCodeArchiveUrl, SourceCodeUrl,
      SpdxLicenseId, TemplateBody, TemplateUrl)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_application_:_Author">Author</code></td>
<td><p>[required] The name of the author publishing the app.</p>
<p>Minimum length=1. Maximum length=127.</p>
<p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_application_:_Description">Description</code></td>
<td><p>[required] The description of the application.</p>
<p>Minimum length=1. Maximum length=256</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_application_:_HomePageUrl">HomePageUrl</code></td>
<td><p>A URL with more information about the application, for example
the location of your GitHub repository for the application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_application_:_Labels">Labels</code></td>
<td><p>Labels to improve discovery of apps in search results.</p>
<p>Minimum length=1. Maximum length=127. Maximum number of labels:
10</p>
<p>Pattern: "^[a-zA-Z0-9+\-_:\/@]+$";</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_application_:_LicenseBody">LicenseBody</code></td>
<td><p>A local text file that contains the license of the app that
matches the spdxLicenseID value of your application. The file has the
format file://\&lt;path\&gt;/\&lt;filename\&gt;.</p>
<p>Maximum size 5 MB</p>
<p>You can specify only one of licenseBody and licenseUrl; otherwise, an
error results.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_application_:_LicenseUrl">LicenseUrl</code></td>
<td><p>A link to the S3 object that contains the license of the app that
matches the spdxLicenseID value of your application.</p>
<p>Maximum size 5 MB</p>
<p>You can specify only one of licenseBody and licenseUrl; otherwise, an
error results.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_application_:_Name">Name</code></td>
<td><p>[required] The name of the application that you want to
publish.</p>
<p>Minimum length=1. Maximum length=140</p>
<p>Pattern: "[a-zA-Z0-9\-]+";</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_application_:_ReadmeBody">ReadmeBody</code></td>
<td><p>A local text readme file in Markdown language that contains a
more detailed description of the application and how it works. The file
has the format file://\&lt;path\&gt;/\&lt;filename\&gt;.</p>
<p>Maximum size 5 MB</p>
<p>You can specify only one of readmeBody and readmeUrl; otherwise, an
error results.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_application_:_ReadmeUrl">ReadmeUrl</code></td>
<td><p>A link to the S3 object in Markdown language that contains a more
detailed description of the application and how it works.</p>
<p>Maximum size 5 MB</p>
<p>You can specify only one of readmeBody and readmeUrl; otherwise, an
error results.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_application_:_SemanticVersion">SemanticVersion</code></td>
<td><p>The semantic version of the application:</p>
<p><a href="https://semver.org/">https://semver.org/</a></p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_application_:_SourceCodeArchiveUrl">SourceCodeArchiveUrl</code></td>
<td><p>A link to the S3 object that contains the ZIP archive of the
source code for this version of your application.</p>
<p>Maximum size 50 MB</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_application_:_SourceCodeUrl">SourceCodeUrl</code></td>
<td><p>A link to a public repository for the source code of your
application, for example the URL of a specific GitHub commit.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_application_:_SpdxLicenseId">SpdxLicenseId</code></td>
<td><p>A valid identifier from <a
href="https://spdx.org/licenses/">https://spdx.org/licenses/</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_application_:_TemplateBody">TemplateBody</code></td>
<td><p>The local raw packaged AWS SAM template file of your application.
The file has the format file://\&lt;path\&gt;/\&lt;filename\&gt;.</p>
<p>You can specify only one of templateBody and templateUrl; otherwise
an error results.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_application_:_TemplateUrl">TemplateUrl</code></td>
<td><p>A link to the S3 object containing the packaged AWS SAM template
of your application.</p>
<p>You can specify only one of templateBody and templateUrl; otherwise
an error results.</p></td>
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

    svc$create_application(
      Author = "string",
      Description = "string",
      HomePageUrl = "string",
      Labels = list(
        "string"
      ),
      LicenseBody = "string",
      LicenseUrl = "string",
      Name = "string",
      ReadmeBody = "string",
      ReadmeUrl = "string",
      SemanticVersion = "string",
      SourceCodeArchiveUrl = "string",
      SourceCodeUrl = "string",
      SpdxLicenseId = "string",
      TemplateBody = "string",
      TemplateUrl = "string"
    )
