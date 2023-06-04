<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_describe_projects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about your Amazon Rekognition Custom Labels projects

### Description

Gets information about your Amazon Rekognition Custom Labels projects.

This operation requires permissions to perform the
`rekognition:DescribeProjects` action.

### Usage

    rekognition_describe_projects(NextToken, MaxResults, ProjectNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_describe_projects_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
results to retrieve), Amazon Rekognition Custom Labels returns a
pagination token in the response. You can use this pagination token to
retrieve the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_describe_projects_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per paginated call. The
largest value you can specify is 100. If you specify a value greater
than 100, a ValidationException error occurs. The default value is
100.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_describe_projects_:_ProjectNames">ProjectNames</code></td>
<td><p>A list of the projects that you want Amazon Rekognition Custom
Labels to describe. If you don't specify a value, the response includes
descriptions for all the projects in your AWS account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProjectDescriptions = list(
        list(
          ProjectArn = "string",
          CreationTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          Status = "CREATING"|"CREATED"|"DELETING",
          Datasets = list(
            list(
              CreationTimestamp = as.POSIXct(
                "2015-01-01"
              ),
              DatasetType = "TRAIN"|"TEST",
              DatasetArn = "string",
              Status = "CREATE_IN_PROGRESS"|"CREATE_COMPLETE"|"CREATE_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_COMPLETE"|"UPDATE_FAILED"|"DELETE_IN_PROGRESS",
              StatusMessage = "string",
              StatusMessageCode = "SUCCESS"|"SERVICE_ERROR"|"CLIENT_ERROR"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_projects(
      NextToken = "string",
      MaxResults = 123,
      ProjectNames = list(
        "string"
      )
    )
