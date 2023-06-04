<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_services</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List services with summaries of detail data

### Description

List services with summaries of detail data.

### Usage

    proton_list_services(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_list_services_:_maxResults">maxResults</code></td>
<td><p>The maximum number of services to list.</p></td>
</tr>
<tr class="even">
<td><code id="proton_list_services_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next service in the
array of services, after the list of services that was previously
requested.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      services = list(
        list(
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          description = "string",
          lastModifiedAt = as.POSIXct(
            "2015-01-01"
          ),
          name = "string",
          status = "CREATE_IN_PROGRESS"|"CREATE_FAILED_CLEANUP_IN_PROGRESS"|"CREATE_FAILED_CLEANUP_COMPLETE"|"CREATE_FAILED_CLEANUP_FAILED"|"CREATE_FAILED"|"ACTIVE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_FAILED_CLEANUP_IN_PROGRESS"|"UPDATE_FAILED_CLEANUP_COMPLETE"|"UPDATE_FAILED_CLEANUP_FAILED"|"UPDATE_FAILED"|"UPDATE_COMPLETE_CLEANUP_FAILED",
          statusMessage = "string",
          templateName = "string"
        )
      )
    )

### Request syntax

    svc$list_services(
      maxResults = 123,
      nextToken = "string"
    )
