<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_update_service_template_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a major or minor version of a service template

### Description

Update a major or minor version of a service template.

### Usage

    proton_update_service_template_version(compatibleEnvironmentTemplates,
      description, majorVersion, minorVersion, status,
      supportedComponentSources, templateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_update_service_template_version_:_compatibleEnvironmentTemplates">compatibleEnvironmentTemplates</code></td>
<td><p>An array of environment template objects that are compatible with
this service template version. A service instance based on this service
template version can run in environments based on compatible
templates.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_service_template_version_:_description">description</code></td>
<td><p>A description of a service template version to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_service_template_version_:_majorVersion">majorVersion</code></td>
<td><p>[required] To update a major version of a service template,
include <code style="white-space: pre;">⁠major Version⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_service_template_version_:_minorVersion">minorVersion</code></td>
<td><p>[required] To update a minor version of a service template,
include <code>minorVersion</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_service_template_version_:_status">status</code></td>
<td><p>The status of the service template minor version to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_service_template_version_:_supportedComponentSources">supportedComponentSources</code></td>
<td><p>An array of supported component sources. Components with
supported sources can be attached to service instances based on this
service template version.</p>
<p>A change to <code>supportedComponentSources</code> doesn't impact
existing component attachments to instances based on this template
version. A change only affects later associations.</p>
<p>For more information about components, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton
components</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_service_template_version_:_templateName">templateName</code></td>
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

    svc$update_service_template_version(
      compatibleEnvironmentTemplates = list(
        list(
          majorVersion = "string",
          templateName = "string"
        )
      ),
      description = "string",
      majorVersion = "string",
      minorVersion = "string",
      status = "REGISTRATION_IN_PROGRESS"|"REGISTRATION_FAILED"|"DRAFT"|"PUBLISHED",
      supportedComponentSources = list(
        "DIRECTLY_DEFINED"
      ),
      templateName = "string"
    )
