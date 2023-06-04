<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_create_profiling_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a profiling group

### Description

Creates a profiling group.

### Usage

    codeguruprofiler_create_profiling_group(agentOrchestrationConfig,
      clientToken, computePlatform, profilingGroupName, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_create_profiling_group_:_agentOrchestrationConfig">agentOrchestrationConfig</code></td>
<td><p>Specifies whether profiling is enabled or disabled for the
created profiling group.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_create_profiling_group_:_clientToken">clientToken</code></td>
<td><p>[required] Amazon CodeGuru Profiler uses this universally unique
identifier (UUID) to prevent the accidental creation of duplicate
profiling groups if there are failures and retries.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_create_profiling_group_:_computePlatform">computePlatform</code></td>
<td><p>The compute platform of the profiling group. Use
<code>AWSLambda</code> if your application runs on AWS Lambda. Use
<code>Default</code> if your application runs on a compute platform that
is not AWS Lambda, such an Amazon EC2 instance, an on-premises server,
or a different platform. If not specified, <code>Default</code> is
used.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_create_profiling_group_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="codeguruprofiler_create_profiling_group_:_tags">tags</code></td>
<td><p>A list of tags to add to the created profiling group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      profilingGroup = list(
        agentOrchestrationConfig = list(
          profilingEnabled = TRUE|FALSE
        ),
        arn = "string",
        computePlatform = "Default"|"AWSLambda",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        profilingStatus = list(
          latestAgentOrchestratedAt = as.POSIXct(
            "2015-01-01"
          ),
          latestAgentProfileReportedAt = as.POSIXct(
            "2015-01-01"
          ),
          latestAggregatedProfile = list(
            period = "PT5M"|"PT1H"|"P1D",
            start = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        tags = list(
          "string"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_profiling_group(
      agentOrchestrationConfig = list(
        profilingEnabled = TRUE|FALSE
      ),
      clientToken = "string",
      computePlatform = "Default"|"AWSLambda",
      profilingGroupName = "string",
      tags = list(
        "string"
      )
    )
