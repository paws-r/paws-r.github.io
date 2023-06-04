<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the full details of a previously created session, including the session status and configuration

### Description

Gets the full details of a previously created session, including the
session status and configuration.

### Usage

    athena_get_session(SessionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_get_session_:_SessionId">SessionId</code></td>
<td><p>[required] The session ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SessionId = "string",
      Description = "string",
      WorkGroup = "string",
      EngineVersion = "string",
      EngineConfiguration = list(
        CoordinatorDpuSize = 123,
        MaxConcurrentDpus = 123,
        DefaultExecutorDpuSize = 123,
        AdditionalConfigs = list(
          "string"
        )
      ),
      NotebookVersion = "string",
      SessionConfiguration = list(
        ExecutionRole = "string",
        WorkingDirectory = "string",
        IdleTimeoutSeconds = 123,
        EncryptionConfiguration = list(
          EncryptionOption = "SSE_S3"|"SSE_KMS"|"CSE_KMS",
          KmsKey = "string"
        )
      ),
      Status = list(
        StartDateTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        EndDateTime = as.POSIXct(
          "2015-01-01"
        ),
        IdleSinceDateTime = as.POSIXct(
          "2015-01-01"
        ),
        State = "CREATING"|"CREATED"|"IDLE"|"BUSY"|"TERMINATING"|"TERMINATED"|"DEGRADED"|"FAILED",
        StateChangeReason = "string"
      ),
      Statistics = list(
        DpuExecutionInMillis = 123
      )
    )

### Request syntax

    svc$get_session(
      SessionId = "string"
    )
