<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_record_handler_progress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Reports progress of a resource handler to CloudFormation

### Description

Reports progress of a resource handler to CloudFormation.

Reserved for use by the [CloudFormation
CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).
Don't use this API in your code.

### Usage

    cloudformation_record_handler_progress(BearerToken, OperationStatus,
      CurrentOperationStatus, StatusMessage, ErrorCode, ResourceModel,
      ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_record_handler_progress_:_BearerToken">BearerToken</code></td>
<td><p>[required] Reserved for use by the <a
href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
CLI</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_record_handler_progress_:_OperationStatus">OperationStatus</code></td>
<td><p>[required] Reserved for use by the <a
href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
CLI</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_record_handler_progress_:_CurrentOperationStatus">CurrentOperationStatus</code></td>
<td><p>Reserved for use by the <a
href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
CLI</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_record_handler_progress_:_StatusMessage">StatusMessage</code></td>
<td><p>Reserved for use by the <a
href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
CLI</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_record_handler_progress_:_ErrorCode">ErrorCode</code></td>
<td><p>Reserved for use by the <a
href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
CLI</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_record_handler_progress_:_ResourceModel">ResourceModel</code></td>
<td><p>Reserved for use by the <a
href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
CLI</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_record_handler_progress_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Reserved for use by the <a
href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation
CLI</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$record_handler_progress(
      BearerToken = "string",
      OperationStatus = "PENDING"|"IN_PROGRESS"|"SUCCESS"|"FAILED",
      CurrentOperationStatus = "PENDING"|"IN_PROGRESS"|"SUCCESS"|"FAILED",
      StatusMessage = "string",
      ErrorCode = "NotUpdatable"|"InvalidRequest"|"AccessDenied"|"InvalidCredentials"|"AlreadyExists"|"NotFound"|"ResourceConflict"|"Throttling"|"ServiceLimitExceeded"|"NotStabilized"|"GeneralServiceException"|"ServiceInternalError"|"NetworkFailure"|"InternalFailure"|"InvalidTypeConfiguration"|"HandlerInternalFailure"|"NonCompliant"|"Unknown"|"UnsupportedTarget",
      ResourceModel = "string",
      ClientRequestToken = "string"
    )
