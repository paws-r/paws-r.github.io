<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_create_log_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a subscription to forward real-time Directory Service domain controller security logs to the specified Amazon CloudWatch log group in your Amazon Web Services account

### Description

Creates a subscription to forward real-time Directory Service domain
controller security logs to the specified Amazon CloudWatch log group in
your Amazon Web Services account.

### Usage

    directoryservice_create_log_subscription(DirectoryId, LogGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_create_log_subscription_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] Identifier of the directory to which you want to
subscribe and receive real-time logs to your specified CloudWatch log
group.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_log_subscription_:_LogGroupName">LogGroupName</code></td>
<td><p>[required] The name of the CloudWatch log group where the
real-time domain controller logs are forwarded.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_log_subscription(
      DirectoryId = "string",
      LogGroupName = "string"
    )
