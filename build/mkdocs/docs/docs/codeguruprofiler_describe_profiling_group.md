<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_describe_profiling_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a ProfilingGroupDescription object that contains information about the requested profiling group

### Description

Returns a
[`ProfilingGroupDescription`](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
object that contains information about the requested profiling group.

### Usage

    codeguruprofiler_describe_profiling_group(profilingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_describe_profiling_group_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group to get information
about.</p></td>
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

    svc$describe_profiling_group(
      profilingGroupName = "string"
    )
