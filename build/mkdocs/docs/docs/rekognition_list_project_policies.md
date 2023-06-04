<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_list_project_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the project policies attached to a project

### Description

Gets a list of the project policies attached to a project.

To attach a project policy to a project, call `put_project_policy`. To
remove a project policy from a project, call `delete_project_policy`.

This operation requires permissions to perform the
`rekognition:ListProjectPolicies` action.

### Usage

    rekognition_list_project_policies(ProjectArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_list_project_policies_:_ProjectArn">ProjectArn</code></td>
<td><p>[required] The ARN of the project for which you want to list the
project policies.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_list_project_policies_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
results to retrieve), Amazon Rekognition Custom Labels returns a
pagination token in the response. You can use this pagination token to
retrieve the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_list_project_policies_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per paginated call. The
largest value you can specify is 5. If you specify a value greater than
5, a ValidationException error occurs. The default value is 5.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProjectPolicies = list(
        list(
          ProjectArn = "string",
          PolicyName = "string",
          PolicyRevisionId = "string",
          PolicyDocument = "string",
          CreationTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_project_policies(
      ProjectArn = "string",
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # This operation lists the project policies that are attached to an Amazon
    # Rekognition Custom Labels project.
    svc$list_project_policies(
      MaxResults = 5L,
      NextToken = "",
      ProjectArn = "arn:aws:rekognition:us-east-1:111122223333:project/my-sdk-p..."
    )

    ## End(Not run)
