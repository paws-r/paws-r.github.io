<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_start_calculation_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Submits calculations for execution within a session

### Description

Submits calculations for execution within a session. You can supply the
code to run as an inline code block within the request.

### Usage

    athena_start_calculation_execution(SessionId, Description,
      CalculationConfiguration, CodeBlock, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_start_calculation_execution_:_SessionId">SessionId</code></td>
<td><p>[required] The session ID.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_start_calculation_execution_:_Description">Description</code></td>
<td><p>A description of the calculation.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_start_calculation_execution_:_CalculationConfiguration">CalculationConfiguration</code></td>
<td><p>Contains configuration information for the calculation.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_start_calculation_execution_:_CodeBlock">CodeBlock</code></td>
<td><p>A string that contains the code of the calculation.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_start_calculation_execution_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique case-sensitive string used to ensure the request to
create the calculation is idempotent (executes only once). If another
<code>StartCalculationExecutionRequest</code> is received, the same
response is returned and another calculation is not created. If a
parameter has changed, an error is returned.</p>
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
      CalculationExecutionId = "string",
      State = "CREATING"|"CREATED"|"QUEUED"|"RUNNING"|"CANCELING"|"CANCELED"|"COMPLETED"|"FAILED"
    )

### Request syntax

    svc$start_calculation_execution(
      SessionId = "string",
      Description = "string",
      CalculationConfiguration = list(
        CodeBlock = "string"
      ),
      CodeBlock = "string",
      ClientRequestToken = "string"
    )
