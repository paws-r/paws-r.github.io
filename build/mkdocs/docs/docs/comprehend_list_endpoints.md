<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_list_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of all existing endpoints that you've created

### Description

Gets a list of all existing endpoints that you've created. For
information about endpoints, see [Managing
endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).

### Usage

    comprehend_list_endpoints(Filter, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehend_list_endpoints_:_Filter">Filter</code></td>
<td><p>Filters the endpoints that are returned. You can filter endpoints
on their name, model, status, or the date and time that they were
created. You can only set one filter at a time.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_list_endpoints_:_NextToken">NextToken</code></td>
<td><p>Identifies the next page of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_list_endpoints_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in each page. The default
is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointPropertiesList = list(
        list(
          EndpointArn = "string",
          Status = "CREATING"|"DELETING"|"FAILED"|"IN_SERVICE"|"UPDATING",
          Message = "string",
          ModelArn = "string",
          DesiredModelArn = "string",
          DesiredInferenceUnits = 123,
          CurrentInferenceUnits = 123,
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          DataAccessRoleArn = "string",
          DesiredDataAccessRoleArn = "string",
          FlywheelArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_endpoints(
      Filter = list(
        ModelArn = "string",
        Status = "CREATING"|"DELETING"|"FAILED"|"IN_SERVICE"|"UPDATING",
        CreationTimeBefore = as.POSIXct(
          "2015-01-01"
        ),
        CreationTimeAfter = as.POSIXct(
          "2015-01-01"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
