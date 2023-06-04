<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_list_application_instance_dependencies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of application instance dependencies

### Description

Returns a list of application instance dependencies.

### Usage

    panorama_list_application_instance_dependencies(ApplicationInstanceId,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_list_application_instance_dependencies_:_ApplicationInstanceId">ApplicationInstanceId</code></td>
<td><p>[required] The application instance's ID.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_list_application_instance_dependencies_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of application instance dependencies to return
in one page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_list_application_instance_dependencies_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      PackageObjects = list(
        list(
          Name = "string",
          PackageVersion = "string",
          PatchVersion = "string"
        )
      )
    )

### Request syntax

    svc$list_application_instance_dependencies(
      ApplicationInstanceId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
