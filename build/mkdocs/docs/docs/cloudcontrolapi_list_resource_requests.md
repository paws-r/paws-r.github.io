<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudcontrolapi_list_resource_requests</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns existing resource operation requests

### Description

Returns existing resource operation requests. This includes requests of
all status types. For more information, see [Listing active resource
operation
requests](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-list)
in the *Amazon Web Services Cloud Control API User Guide*.

Resource operation requests expire after 7 days.

### Usage

    cloudcontrolapi_list_resource_requests(MaxResults, NextToken,
      ResourceRequestStatusFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudcontrolapi_list_resource_requests_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned with a single call.
If the number of available results exceeds this maximum, the response
includes a <code>NextToken</code> value that you can assign to the
<code>NextToken</code> request parameter to get the next set of
results.</p>
<p>The default is <code>20</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudcontrolapi_list_resource_requests_:_NextToken">NextToken</code></td>
<td><p>If the previous paginated request didn't return all of the
remaining results, the response object's <code>NextToken</code>
parameter value is set to a token. To retrieve the next set of results,
call this action again and assign that token to the request object's
<code>NextToken</code> parameter. If there are no remaining results, the
previous response object's <code>NextToken</code> parameter is set to
<code>null</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudcontrolapi_list_resource_requests_:_ResourceRequestStatusFilter">ResourceRequestStatusFilter</code></td>
<td><p>The filter criteria to apply to the requests returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceRequestStatusSummaries = list(
        list(
          TypeName = "string",
          Identifier = "string",
          RequestToken = "string",
          Operation = "CREATE"|"DELETE"|"UPDATE",
          OperationStatus = "PENDING"|"IN_PROGRESS"|"SUCCESS"|"FAILED"|"CANCEL_IN_PROGRESS"|"CANCEL_COMPLETE",
          EventTime = as.POSIXct(
            "2015-01-01"
          ),
          ResourceModel = "string",
          StatusMessage = "string",
          ErrorCode = "NotUpdatable"|"InvalidRequest"|"AccessDenied"|"InvalidCredentials"|"AlreadyExists"|"NotFound"|"ResourceConflict"|"Throttling"|"ServiceLimitExceeded"|"NotStabilized"|"GeneralServiceException"|"ServiceInternalError"|"ServiceTimeout"|"NetworkFailure"|"InternalFailure",
          RetryAfter = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resource_requests(
      MaxResults = 123,
      NextToken = "string",
      ResourceRequestStatusFilter = list(
        Operations = list(
          "CREATE"|"DELETE"|"UPDATE"
        ),
        OperationStatuses = list(
          "PENDING"|"IN_PROGRESS"|"SUCCESS"|"FAILED"|"CANCEL_IN_PROGRESS"|"CANCEL_COMPLETE"
        )
      )
    )
