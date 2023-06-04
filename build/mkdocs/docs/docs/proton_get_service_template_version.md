<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_service_template_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get detailed data for a major or minor version of a service template

### Description

Get detailed data for a major or minor version of a service template.

### Usage

    proton_get_service_template_version(majorVersion, minorVersion,
      templateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_get_service_template_version_:_majorVersion">majorVersion</code></td>
<td><p>[required] To get service template major version detail data,
include <code style="white-space: pre;">⁠major Version⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_get_service_template_version_:_minorVersion">minorVersion</code></td>
<td><p>[required] To get service template minor version detail data,
include <code>minorVersion</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_get_service_template_version_:_templateName">templateName</code></td>
<td><p>[required] The name of the service template a version of which
you want to get detailed data for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      serviceTemplateVersion = list(
        arn = "string",
        compatibleEnvironmentTemplates = list(
          list(
            majorVersion = "string",
            templateName = "string"
          )
        ),
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
        supportedComponentSources = list(
          "DIRECTLY_DEFINED"
        ),
        templateName = "string"
      )
    )

### Request syntax

    svc$get_service_template_version(
      majorVersion = "string",
      minorVersion = "string",
      templateName = "string"
    )
