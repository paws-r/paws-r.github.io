<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_service_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List service templates with detail data

### Description

List service templates with detail data.

### Usage

    proton_list_service_templates(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_service_templates_:_maxResults">maxResults</code></td>
<td><p>The maximum number of service templates to list.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_service_templates_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next service template
in the array of service templates, after the list of service templates
previously requested.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      templates = list(
        list(
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          description = "string",
          displayName = "string",
          lastModifiedAt = as.POSIXct(
            "2015-01-01"
          ),
          name = "string",
          pipelineProvisioning = "CUSTOMER_MANAGED",
          recommendedVersion = "string"
        )
      )
    )

### Request syntax

    svc$list_service_templates(
      maxResults = 123,
      nextToken = "string"
    )
