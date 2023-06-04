<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_list_application_dependencies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the list of applications nested in the containing application

### Description

Retrieves the list of applications nested in the containing application.

### Usage

    serverlessapplicationrepository_list_application_dependencies(
      ApplicationId, MaxItems, NextToken, SemanticVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_list_application_dependencies_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_list_application_dependencies_:_MaxItems">MaxItems</code></td>
<td><p>The total number of items to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_list_application_dependencies_:_NextToken">NextToken</code></td>
<td><p>A token to specify where to start paginating.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_list_application_dependencies_:_SemanticVersion">SemanticVersion</code></td>
<td><p>The semantic version of the application to get.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Dependencies = list(
        list(
          ApplicationId = "string",
          SemanticVersion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_application_dependencies(
      ApplicationId = "string",
      MaxItems = 123,
      NextToken = "string",
      SemanticVersion = "string"
    )
