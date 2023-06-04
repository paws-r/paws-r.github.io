<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudcontrolapi_get_resource_request_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current status of a resource operation request

### Description

Returns the current status of a resource operation request. For more
information, see [Tracking the progress of resource operation
requests](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-track)
in the *Amazon Web Services Cloud Control API User Guide*.

### Usage

    cloudcontrolapi_get_resource_request_status(RequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudcontrolapi_get_resource_request_status_:_RequestToken">RequestToken</code></td>
<td><p>[required] A unique token used to track the progress of the
resource operation request.</p>
<p>Request tokens are included in the <code>ProgressEvent</code> type
returned by a resource operation request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProgressEvent = list(
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
    )

### Request syntax

    svc$get_resource_request_status(
      RequestToken = "string"
    )
