<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudcontrolapi_cancel_resource_request</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the specified resource operation request

### Description

Cancels the specified resource operation request. For more information,
see [Canceling resource operation
requests](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-cancel)
in the *Amazon Web Services Cloud Control API User Guide*.

Only resource operations requests with a status of `PENDING` or
`IN_PROGRESS` can be canceled.

### Usage

    cloudcontrolapi_cancel_resource_request(RequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudcontrolapi_cancel_resource_request_:_RequestToken">RequestToken</code></td>
<td><p>[required] The <code>RequestToken</code> of the
<code>ProgressEvent</code> object returned by the resource operation
request.</p></td>
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

    svc$cancel_resource_request(
      RequestToken = "string"
    )
