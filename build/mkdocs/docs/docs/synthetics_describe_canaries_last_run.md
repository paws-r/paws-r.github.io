<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_describe_canaries_last_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to see information from the most recent run of each canary that you have created

### Description

Use this operation to see information from the most recent run of each
canary that you have created.

This operation supports resource-level authorization using an IAM policy
and the `Names` parameter. If you specify the `Names` parameter, the
operation is successful only if you have authorization to view all the
canaries that you specify in your request. If you do not have permission
to view any of the canaries, the request fails with a 403 response.

You are required to use the `Names` parameter if you are logged on to a
user or role that has an IAM policy that restricts which canaries that
you are allowed to view. For more information, see [Limiting a user to
viewing specific
canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html).

### Usage

    synthetics_describe_canaries_last_run(NextToken, MaxResults, Names)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="synthetics_describe_canaries_last_run_:_NextToken">NextToken</code></td>
<td><p>A token that indicates that there is more data available. You can
use this token in a subsequent <code>describe_canaries_last_run</code>
operation to retrieve the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_describe_canaries_last_run_:_MaxResults">MaxResults</code></td>
<td><p>Specify this parameter to limit how many runs are returned each
time you use the <code>DescribeLastRun</code> operation. If you omit
this parameter, the default of 100 is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="synthetics_describe_canaries_last_run_:_Names">Names</code></td>
<td><p>Use this parameter to return only canaries that match the names
that you specify here. You can specify as many as five canary names.</p>
<p>If you specify this parameter, the operation is successful only if
you have authorization to view all the canaries that you specify in your
request. If you do not have permission to view any of the canaries, the
request fails with a 403 response.</p>
<p>You are required to use the <code>Names</code> parameter if you are
logged on to a user or role that has an IAM policy that restricts which
canaries that you are allowed to view. For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">Limiting
a user to viewing specific canaries</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CanariesLastRun = list(
        list(
          CanaryName = "string",
          LastRun = list(
            Id = "string",
            Name = "string",
            Status = list(
              State = "RUNNING"|"PASSED"|"FAILED",
              StateReason = "string",
              StateReasonCode = "CANARY_FAILURE"|"EXECUTION_FAILURE"
            ),
            Timeline = list(
              Started = as.POSIXct(
                "2015-01-01"
              ),
              Completed = as.POSIXct(
                "2015-01-01"
              )
            ),
            ArtifactS3Location = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_canaries_last_run(
      NextToken = "string",
      MaxResults = 123,
      Names = list(
        "string"
      )
    )
