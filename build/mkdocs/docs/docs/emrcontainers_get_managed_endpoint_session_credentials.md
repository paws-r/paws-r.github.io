<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_get_managed_endpoint_session_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generate a session token to connect to a managed endpoint

### Description

Generate a session token to connect to a managed endpoint.

### Usage

    emrcontainers_get_managed_endpoint_session_credentials(
      endpointIdentifier, virtualClusterIdentifier, executionRoleArn,
      credentialType, durationInSeconds, logContext, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrcontainers_get_managed_endpoint_session_credentials_:_endpointIdentifier">endpointIdentifier</code></td>
<td><p>[required] The ARN of the managed endpoint for which the request
is submitted.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_get_managed_endpoint_session_credentials_:_virtualClusterIdentifier">virtualClusterIdentifier</code></td>
<td><p>[required] The ARN of the Virtual Cluster which the Managed
Endpoint belongs to.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_get_managed_endpoint_session_credentials_:_executionRoleArn">executionRoleArn</code></td>
<td><p>[required] The IAM Execution Role ARN that will be used by the
job run.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_get_managed_endpoint_session_credentials_:_credentialType">credentialType</code></td>
<td><p>[required] Type of the token requested. Currently supported and
default value of this field is “TOKEN.”</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_get_managed_endpoint_session_credentials_:_durationInSeconds">durationInSeconds</code></td>
<td><p>Duration in seconds for which the session token is valid. The
default duration is 15 minutes and the maximum is 12 hours.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_get_managed_endpoint_session_credentials_:_logContext">logContext</code></td>
<td><p>String identifier used to separate sections of the execution logs
uploaded to S3.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_get_managed_endpoint_session_credentials_:_clientToken">clientToken</code></td>
<td><p>The client idempotency token of the job run request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      credentials = list(
        token = "string"
      ),
      expiresAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_managed_endpoint_session_credentials(
      endpointIdentifier = "string",
      virtualClusterIdentifier = "string",
      executionRoleArn = "string",
      credentialType = "string",
      durationInSeconds = 123,
      logContext = "string",
      clientToken = "string"
    )
