<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_service_template_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List major or minor versions of a service template with detail data

### Description

List major or minor versions of a service template with detail data.

### Usage

    proton_list_service_template_versions(majorVersion, maxResults,
      nextToken, templateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_service_template_versions_:_majorVersion">majorVersion</code></td>
<td><p>To view a list of minor of versions under a major version of a
service template, include <code
style="white-space: pre;">⁠major Version⁠</code>.</p>
<p>To view a list of major versions of a service template,
<em>exclude</em> <code
style="white-space: pre;">⁠major Version⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_service_template_versions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of major or minor versions of a service
template to list.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_list_service_template_versions_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next major or minor
version in the array of major or minor versions of a service template,
after the list of major or minor versions that was previously
requested.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_service_template_versions_:_templateName">templateName</code></td>
<td><p>[required] The name of the service template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      templateVersions = list(
        list(
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
          status = "REGISTRATION_IN_PROGRESS"|"REGISTRATION_FAILED"|"DRAFT"|"PUBLISHED",
          statusMessage = "string",
          templateName = "string"
        )
      )
    )

### Request syntax

    svc$list_service_template_versions(
      majorVersion = "string",
      maxResults = 123,
      nextToken = "string",
      templateName = "string"
    )
