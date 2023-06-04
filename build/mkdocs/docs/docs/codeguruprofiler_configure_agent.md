<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_configure_agent</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used by profiler agents to report their current state and to receive remote configuration updates

### Description

Used by profiler agents to report their current state and to receive
remote configuration updates. For example, `configure_agent` can be used
to tell an agent whether to profile or not and for how long to return
profiling data.

### Usage

    codeguruprofiler_configure_agent(fleetInstanceId, metadata,
      profilingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_configure_agent_:_fleetInstanceId">fleetInstanceId</code></td>
<td><p>A universally unique identifier (UUID) for a profiling instance.
For example, if the profiling instance is an Amazon EC2 instance, it is
the instance ID. If it is an AWS Fargate container, it is the
container's task ID.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_configure_agent_:_metadata">metadata</code></td>
<td><p>Metadata captured about the compute platform the agent is running
on. It includes information about sampling and reporting. The valid
fields are:</p>
<ul>
<li><p><code>COMPUTE_PLATFORM</code> - The compute platform on which the
agent is running</p></li>
<li><p><code>AGENT_ID</code> - The ID for an agent instance.</p></li>
<li><p><code>AWS_REQUEST_ID</code> - The AWS request ID of a Lambda
invocation.</p></li>
<li><p><code>EXECUTION_ENVIRONMENT</code> - The execution environment a
Lambda function is running on.</p></li>
<li><p><code>LAMBDA_FUNCTION_ARN</code> - The Amazon Resource Name (ARN)
that is used to invoke a Lambda function.</p></li>
<li><p><code>LAMBDA_MEMORY_LIMIT_IN_MB</code> - The memory allocated to
a Lambda function.</p></li>
<li><p><code>LAMBDA_REMAINING_TIME_IN_MILLISECONDS</code> - The time in
milliseconds before execution of a Lambda function times out.</p></li>
<li><p><code>LAMBDA_TIME_GAP_BETWEEN_INVOKES_IN_MILLISECONDS</code> -
The time in milliseconds between two invocations of a Lambda
function.</p></li>
<li><p><code>LAMBDA_PREVIOUS_EXECUTION_TIME_IN_MILLISECONDS</code> - The
time in milliseconds for the previous Lambda invocation.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_configure_agent_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group for which the
configured agent is collecting profiling data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      configuration = list(
        agentParameters = list(
          "string"
        ),
        periodInSeconds = 123,
        shouldProfile = TRUE|FALSE
      )
    )

### Request syntax

    svc$configure_agent(
      fleetInstanceId = "string",
      metadata = list(
        "string"
      ),
      profilingGroupName = "string"
    )
