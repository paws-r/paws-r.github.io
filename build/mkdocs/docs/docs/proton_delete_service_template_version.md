<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_delete_service_template_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## If no other minor versions of a service template exist, delete a major version of the service template if it's not the Recommended version

### Description

If no other minor versions of a service template exist, delete a major
version of the service template if it's not the `Recommended` version.
Delete the `Recommended` version of the service template if no other
major versions or minor versions of the service template exist. A major
version of a service template is a version that *isn't* backwards
compatible.

Delete a minor version of a service template if it's not the
`Recommended` version. Delete a `Recommended` minor version of the
service template if no other minor versions of the service template
exist. A minor version of a service template is a version that's
backwards compatible.

### Usage

    proton_delete_service_template_version(majorVersion, minorVersion,
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
id="proton_delete_service_template_version_:_majorVersion">majorVersion</code></td>
<td><p>[required] The service template major version to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_delete_service_template_version_:_minorVersion">minorVersion</code></td>
<td><p>[required] The service template minor version to delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_delete_service_template_version_:_templateName">templateName</code></td>
<td><p>[required] The name of the service template.</p></td>
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

    svc$delete_service_template_version(
      majorVersion = "string",
      minorVersion = "string",
      templateName = "string"
    )
