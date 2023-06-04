<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_start_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a session for running calculations within a workgroup

### Description

Creates a session for running calculations within a workgroup. The
session is ready when it reaches an `IDLE` state.

### Usage

    athena_start_session(Description, WorkGroup, EngineConfiguration,
      NotebookVersion, SessionIdleTimeoutInMinutes, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_start_session_:_Description">Description</code></td>
<td><p>The session description.</p></td>
</tr>
<tr class="even">
<td><code id="athena_start_session_:_WorkGroup">WorkGroup</code></td>
<td><p>[required] The workgroup to which the session belongs.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_start_session_:_EngineConfiguration">EngineConfiguration</code></td>
<td><p>[required] Contains engine data processing unit (DPU)
configuration settings and parameter mappings.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_start_session_:_NotebookVersion">NotebookVersion</code></td>
<td><p>The notebook version. This value is supplied automatically for
notebook sessions in the Athena console and is not required for
programmatic session access. The only valid notebook version is <code
style="white-space: pre;">⁠Athena notebook version 1⁠</code>. If you
specify a value for <code>NotebookVersion</code>, you must also specify
a value for <code>NotebookId</code>. See
EngineConfiguration$AdditionalConfigs.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_start_session_:_SessionIdleTimeoutInMinutes">SessionIdleTimeoutInMinutes</code></td>
<td><p>The idle timeout in minutes for the session.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_start_session_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique case-sensitive string used to ensure the request to
create the session is idempotent (executes only once). If another
<code>StartSessionRequest</code> is received, the same response is
returned and another session is not created. If a parameter has changed,
an error is returned.</p>
<p>This token is listed as not required because Amazon Web Services SDKs
(for example the Amazon Web Services SDK for Java) auto-generate the
token for users. If you are not using the Amazon Web Services SDK or the
Amazon Web Services CLI, you must provide this token or the action will
fail.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SessionId = "string",
      State = "CREATING"|"CREATED"|"IDLE"|"BUSY"|"TERMINATING"|"TERMINATED"|"DEGRADED"|"FAILED"
    )

### Request syntax

    svc$start_session(
      Description = "string",
      WorkGroup = "string",
      EngineConfiguration = list(
        CoordinatorDpuSize = 123,
        MaxConcurrentDpus = 123,
        DefaultExecutorDpuSize = 123,
        AdditionalConfigs = list(
          "string"
        )
      ),
      NotebookVersion = "string",
      SessionIdleTimeoutInMinutes = 123,
      ClientRequestToken = "string"
    )
