<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_list_application_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists versions for the specified application

### Description

Lists versions for the specified application.

### Usage

    serverlessapplicationrepository_list_application_versions(ApplicationId,
      MaxItems, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_list_application_versions_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_list_application_versions_:_MaxItems">MaxItems</code></td>
<td><p>The total number of items to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_list_application_versions_:_NextToken">NextToken</code></td>
<td><p>A token to specify where to start paginating.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Versions = list(
        list(
          ApplicationId = "string",
          CreationTime = "string",
          SemanticVersion = "string",
          SourceCodeUrl = "string"
        )
      )
    )

### Request syntax

    svc$list_application_versions(
      ApplicationId = "string",
      MaxItems = 123,
      NextToken = "string"
    )
