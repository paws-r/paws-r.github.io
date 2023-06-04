<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_create_environment_template_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new major or minor version of an environment template

### Description

Create a new major or minor version of an environment template. A major
version of an environment template is a version that *isn't* backwards
compatible. A minor version of an environment template is a version
that's backwards compatible within its major version.

### Usage

    proton_create_environment_template_version(clientToken, description,
      majorVersion, source, tags, templateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_create_environment_template_version_:_clientToken">clientToken</code></td>
<td><p>When included, if two identical requests are made with the same
client token, Proton returns the environment template version that the
first request created.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_template_version_:_description">description</code></td>
<td><p>A description of the new version of an environment
template.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_environment_template_version_:_majorVersion">majorVersion</code></td>
<td><p>To create a new minor version of the environment template,
include <code style="white-space: pre;">⁠major Version⁠</code>.</p>
<p>To create a new major and minor version of the environment template,
exclude <code style="white-space: pre;">⁠major Version⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_template_version_:_source">source</code></td>
<td><p>[required] An object that includes the template bundle S3 bucket
path and name for the new version of an template.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_environment_template_version_:_tags">tags</code></td>
<td><p>An optional list of metadata items that you can associate with
the Proton environment template version. A tag is a key-value pair.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton
resources and tagging</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_template_version_:_templateName">templateName</code></td>
<td><p>[required] The name of the environment template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environmentTemplateVersion = list(
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        lastModifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        majorVersion = "string",
        minorVersion = "string",
        recommendedMinorVersion = "string",
        schema = "string",
        status = "REGISTRATION_IN_PROGRESS"|"REGISTRATION_FAILED"|"DRAFT"|"PUBLISHED",
        statusMessage = "string",
        templateName = "string"
      )
    )

### Request syntax

    svc$create_environment_template_version(
      clientToken = "string",
      description = "string",
      majorVersion = "string",
      source = list(
        s3 = list(
          bucket = "string",
          key = "string"
        )
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      templateName = "string"
    )
