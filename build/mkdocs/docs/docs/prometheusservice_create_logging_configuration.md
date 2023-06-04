<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_create_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create logging configuration

### Description

Create logging configuration.

### Usage

    prometheusservice_create_logging_configuration(clientToken, logGroupArn,
      workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_create_logging_configuration_:_clientToken">clientToken</code></td>
<td><p>Optional, unique, case-sensitive, user-provided identifier to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="prometheusservice_create_logging_configuration_:_logGroupArn">logGroupArn</code></td>
<td><p>[required] The ARN of the CW log group to which the vended log
data will be published.</p></td>
</tr>
<tr class="odd">
<td><code
id="prometheusservice_create_logging_configuration_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to vend logs to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = list(
        statusCode = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"CREATION_FAILED"|"UPDATE_FAILED",
        statusReason = "string"
      )
    )

### Request syntax

    svc$create_logging_configuration(
      clientToken = "string",
      logGroupArn = "string",
      workspaceId = "string"
    )
